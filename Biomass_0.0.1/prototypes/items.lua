
data:extend({
    {
        type = "item",
        name = "biomass-ore",
        icon = "__Biomass__/graphics/biomass/biomass-resource.png",
        icon_size = 64,
        icon_mipmaps = 4,
        pictures =
        {
          { size = 64, filename = "__Biomass__/graphics/biomass/biomass-resource.png",   scale = 0.25, mipmap_count = 4 }
        },
        subgroup = "raw-resource",
        order = "e[biomass-ore]",
        fuel_value = "3MJ",
        fuel_category = "chemical",
        stack_size = 50
      },
      {
        type = "item",
        name = "dead-tissue",
        icon = "__Biomass__/graphics/icons/dead_tissue.png",
        icon_size = 64,
        icon_mipmaps = 4,
        pictures =
        {
          { size = 64, filename = "__Biomass__/graphics/icons/dead_tissue.png",   scale = 0.25, mipmap_count = 4 }
        },
        subgroup = "raw-resource",
        order = "b[dead-tissue]",
        stack_size = 50,
        fuel_category = "chemical",
        fuel_value = "15MJ",
      },
      
      {
        type = "item",
        name = "living-tissue",
        icon = "__Biomass__/graphics/icons/living_tissue.png",
        icon_size = 64,
        icon_mipmaps = 4,
        pictures =
        {
          { size = 64, filename = "__Biomass__/graphics/icons/dead_tissue.png",   scale = 0.25, mipmap_count = 4 }
        },
        subgroup = "raw-resource",
        order = "b[living-tissue]",
        stack_size = 50
      },
    
      {
        type = "tool",
        name = "alien-science-pack",
        localised_description = {"item-description.science-pack"},
        icon = "__Biomass__/graphics/icons/alien-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "a[alien-science-pack]",
        stack_size = 200,
        durability = 1,
        durability_description_key = "description.science-pack-remaining-amount-key",
        durability_description_value = "description.science-pack-remaining-amount-value"
      },
      {

        type = "item",
        name = "bio-fuel-generator",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "energy",
        order = "b[steam-power]-a[boiler]",
        place_result = "bio-fuel-generator",
        stack_size = 50
      },
      {
        type = "item",
        name = "growth-vat",
        icon = "__base__/graphics/icons/centrifuge.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "g[growth-bat]",
        place_result = "growth-vat",
        stack_size = 50
      },
      {
        type = "item",
        name = "bio-chip",
        icon = "__Biomass__/graphics/icons/bio_chip.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "g[bio-chip]",
        stack_size = 100
      },
      {
        type = "module",
        name = "productivity-module-4",
        localised_description = {"item-description.productivity-module"},
        icon = "__Biomass__/graphics/icons/productivity-module-4.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "module",
        category = "productivity",
        tier = 3,
        order = "c[productivity]-c[productivity-module-4]",
        stack_size = 50,
        effect =
        {
          productivity = {bonus = 0.2},
          consumption = {bonus = 1.2},
          pollution = {bonus = 0.3},
          speed = {bonus = -0.2}
        },
        limitation = productivity_module_limitation(),
        limitation_message_key = "production-module-usable-only-on-intermediates"
      },
      {
        type = "module",
        name = "speed-module-4",
        localised_description = {"item-description.speed-module"},
        icon = "__Biomass__/graphics/icons/speed-module-4.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "module",
        category = "speed",
        tier = 3,
        order = "a[speed]-c[speed-module-4]",
        stack_size = 50,
        effect = { speed = {bonus = 0.8}, consumption = {bonus = 1.1}},
        beacon_tint =
        {
          primary = {r = 0.441, g = 0.714, b = 1.000, a = 1.000}, -- #70b6ffff
          secondary = {r = 0.388, g = 0.976, b = 1.000, a = 1.000}, -- #63f8ffff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false
      },
      {
        type = "item",
        name = "scourge-vial",
        icon = "__Biomass__/graphics/icons/scourge-vial.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "f[scourge-vial]",
        stack_size = 50
      },
})