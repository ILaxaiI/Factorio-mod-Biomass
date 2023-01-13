local MAX_RESOURCE = 980
local function amount(factor)
  return MAX_RESOURCE * factor ^ 1.5 + 20
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