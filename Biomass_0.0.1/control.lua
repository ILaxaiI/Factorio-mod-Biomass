
local function amount(factor)
  return settings.global["Lax-bio-max-richness"].value * factor ^ 1.5 +  settings.global["Lax-bio-base-richness"].value
end

script.on_event(defines.events.on_entity_died,
  function(event)
    event.entity.surface.create_entity({ name = "biomass", position = event.entity.position, force = "neutral",amount =amount(event.entity.force.evolution_factor)})
  end,
  {{filter = "type",type = "unit-spawner"}})

script.on_event(defines.events.on_player_selected_area,function (event)
  if event.item == "sweep-biomass" then
    for i,v in pairs(event.entities) do
      if v.valid then
        v.destroy({do_cliff_correction = false,raise_destroy = false})
      end
    end
  end
end)