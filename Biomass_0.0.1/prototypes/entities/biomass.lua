require ("__base__.prototypes.entity.spawner-animation")
require ("__base__.prototypes.entity.biter-animations")
local enemy_autoplace = require ("__base__.prototypes.entity.enemy-autoplace-utils")
require ("__base__.prototypes.entity.biter-ai-settings")

local sounds = require ("__base__.prototypes.entity.sounds")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")


data:extend(
{
    {
        type = "resource",
        name = "biomass",
        category = "basic-solid",
        flags = {"placeable-neutral"},

        icon = "__Biomass__/graphics/biomass/biomass-resource.png",
        icon_size = 64, icon_mipmaps = 4,
        collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
        selectable_in_game = true,
        subgroup="raw-resource",
        map_grid = false,
        order = "c[corpse]-b[biter-spawner2]",
        minable =
        {
          mining_particle = "wooden-particle",
          mining_time = .3,
          result = "biomass-ore"
        },
        
        resource_patch_search_radius = 12,
        highlight = true,
        map_color = {197/256, 83/256, 185/256},
        stage_counts = {0},
        stages =
        {
          sheets =
          {
              {
                filename = "__Biomass__/graphics/biomass/biomass.png",
                line_length = 1,
                width = 248,
                height = 178,
                frame_count = 1,
                variation_count = 4,
                direction_count = 1,
                shift = util.by_pixel(2, -2),
                hr_version =
                {
                  filename = "__Biomass__/graphics/biomass/hr-biomass.png",
                  line_length = 1,
                  width = 490,
                  height = 354,
                  variation_count = 4,
                  frame_count = 1,
                  direction_count = 1,
                  shift = util.by_pixel(3, -2),
                  scale = 0.5
                }
              },
              {
                filename = "__Biomass__/graphics/biomass/biomass-mask.png",
                flags = { "mask" },
                width = 140,
                height = 118,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-2, -14),
                line_length = 1,
                variation_count = 4,
                tint = tint,
                hr_version =
                {
                  filename = "__Biomass__/graphics/biomass/hr-biomass-mask.png",
                  flags = { "mask" },
                  width = 276,
                  height = 234,
                  frame_count = 1,
                  variation_count = 4,
                  direction_count = 1,
                  shift = util.by_pixel(-1, -14),
                  line_length = 1,
                  tint = tint,
                  y = 0 * 234,
                  scale = 0.5
                    }
                }
            },
        }
    }
})

if settings.startup["lax-bio-biter-loot"].value then

end

for i,spawner in pairs(data.raw["unit-spawner"]) do
    data.raw["corpse"][spawner.corpse].time_before_removed = 60*5
end
