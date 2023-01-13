require("__Warheads__.prototypes.warheads")

local create_utils = require("__Warheads__.prototypes.sprite-assembly-util")
local sounds = require("__base__.prototypes.entity.sounds")

local createAppearance = create_utils.createAppearance
local tints = create_utils.tints
local scourgeColor = {r = 115/256, g = 178/256, b = 125/256, a = 1}
local scourge_damage = 50
data:extend(
{
    {
        name = "scourge-cloud",
        type = "smoke-with-trigger",
        flags = {"not-on-map"},
        show_when_smoke_off = true,
        particle_count = 16,
        particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
        particle_distance_scale_factor = 0.5,
        particle_scale_factor = { 1, 0.707 },
        wave_speed = { 1/80, 1/60 },
        wave_distance = { 0.3, 0.2 },
        spread_duration_variation = 20,
        particle_duration_variation = 60 * 3,
        render_layer = "object",
    
        affected_by_wind = false,
        cyclic = true,
        duration = 60 * 60,
        fade_away_duration = 2 * 60,
        spread_duration = 20,
        color = {r = 115/256, g = 178/256, b = 125/256, a = 0.322},
        animation =
        {
          width = 152,
          height = 120,
          line_length = 5,
          frame_count = 60,
          shift = {-0.53125, -0.4375},
          priority = "high",
          animation_speed = 0.25,
          filename = "__base__/graphics/entity/smoke/smoke.png",
          flags = { "smoke" }
        },
    
        created_effect =
        {
          {
            type = "cluster",
            cluster_count = 20,
            distance = 20,
            distance_deviation = 20,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-smoke",
                  show_in_tooltip = false,
                  entity_name = "scourge-cloud-visual-dummy",
                  initial_height = 0
                }
              }
            }
          }
        },
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "nested-result",
              action =
                {
                {
                    entity_flags = {"placeable-enemy"},
                    type = "area",
                    radius = 20,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = scourge_damage, type = "scourge"}
                        }
                    }
                },
            }
            }
        }
        },
        action_cooldown = 30
      },
      {
        name = "scourge-cloud-m",
        type = "smoke-with-trigger",
        flags = {"not-on-map"},
        show_when_smoke_off = true,
        particle_count = 16,
        particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
        particle_distance_scale_factor = 0.5,
        particle_scale_factor = { 1, 0.707 },
        wave_speed = { 1/80, 1/60 },
        wave_distance = { 0.3, 0.2 },
        spread_duration_variation = 20,
        particle_duration_variation = 60 * 3,
        render_layer = "object",
    
        affected_by_wind = false,
        cyclic = true,        
        duration = 60 * 60,

        fade_away_duration = 2 * 60,
        spread_duration = 20,
        color = {r = 115/256, g = 178/256, b = 125/256, a = 0.322},
        animation =
        {
          width = 152,
          height = 120,
          line_length = 5,
          frame_count = 60,
          shift = {-0.53125, -0.4375},
          priority = "high",
          animation_speed = 0.25,
          filename = "__base__/graphics/entity/smoke/smoke.png",
          flags = { "smoke" }
        },
    
        created_effect =
        {
          {
            type = "cluster",
            cluster_count = 80,
            distance = 40,
            distance_deviation = 40,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-smoke",
                  show_in_tooltip = false,
                  entity_name = "scourge-cloud-visual-dummy",
                  initial_height = 0
                }
              }
            }
          }
        },
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "nested-result",
              action =
                {
                {
                    entity_flags = {"placeable-enemy"},
                    type = "area",
                    radius = 40,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = scourge_damage, type = "scourge"}
                        }
                    }
                },
            }
            }
        }
        },
        action_cooldown = 30
      },
      {
        name = "scourge-cloud-l",
        type = "smoke-with-trigger",
        flags = {"not-on-map"},
        show_when_smoke_off = true,
        particle_count = 16,
        particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
        particle_distance_scale_factor = 0.5,
        particle_scale_factor = { 1, 0.707 },
        wave_speed = { 1/80, 1/60 },
        wave_distance = { 0.3, 0.2 },
        spread_duration_variation = 20,
        particle_duration_variation = 60 * 3,
        render_layer = "object",
    
        affected_by_wind = false,
        cyclic = true,        
        duration = 60 * 60,

        fade_away_duration = 2 * 60,
        spread_duration = 20,
        color = {r = 115/256, g = 178/256, b = 125/256, a = 0.322},
        animation =
        {
          width = 152,
          height = 120,
          line_length = 5,
          frame_count = 60,
          shift = {-0.53125, -0.4375},
          priority = "high",
          animation_speed = 0.25,
          filename = "__base__/graphics/entity/smoke/smoke.png",
          flags = { "smoke" }
        },
    
        created_effect =
        {
          {
            type = "cluster",
            cluster_count = 150,
            distance = 60,
            distance_deviation = 60,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-smoke",
                  show_in_tooltip = false,
                  entity_name = "scourge-cloud-visual-dummy",
                  initial_height = 0
                }
              }
            }
          }
        },
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "nested-result",
              action =
                {
                {
                    entity_flags = {"placeable-enemy"},
                    type = "area",
                    radius = 60,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = scourge_damage, type = "scourge"}
                        }
                    }
                },
            }
            }
        }
        },
        action_cooldown = 30
      },
      {
        type = "smoke-with-trigger",
        name = "scourge-cloud-visual-dummy",
        flags = {"not-on-map"},
        show_when_smoke_off = true,
        particle_count = 24,
        particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
        particle_distance_scale_factor = 0.5,
        particle_scale_factor = { 1, 0.707 },
        particle_duration_variation = 60 * 3,
        wave_speed = { 0.5 / 80, 0.5 / 60 },
        wave_distance = { 1, 0.5 },
        spread_duration_variation = 300 - 20,
    
        render_layer = "object",
    
        affected_by_wind = false,
        cyclic = true,
        duration = 60 * 20 + 4 * 60,
        fade_away_duration = 3 * 60,
        spread_duration = (300 - 20) / 2 ,
        color = {r = 115/256, g = 178/256, b = 125/256, a = 0.322},
    
        animation =
        {
          width = 152,
          height = 120,
          line_length = 5,
          frame_count = 60,
          shift = {-0.53125, -0.4375},
          priority = "high",
          animation_speed = 0.25,
          filename = "__base__/graphics/entity/smoke/smoke.png",
          flags = { "smoke" }
        },
        working_sound =
        {
          sound = sounds.poison_cloud(0.5),
          max_sounds_per_type = 1,
          audible_distance_modifier = 0.8,
          match_volume_to_activity = true
        }
      },
      {
        name = "scourge-cloud-t",
        type = "smoke-with-trigger",
        flags = {"not-on-map"},
        show_when_smoke_off = true,
        particle_count = 16,
        particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
        particle_distance_scale_factor = 0.5,
        particle_scale_factor = { 1, 0.707 },
        wave_speed = { 1/80, 1/60 },
        wave_distance = { 0.3, 0.2 },
        spread_duration_variation = 20,
        particle_duration_variation = 60 * 3,
        render_layer = "object",
    
        affected_by_wind = false,
        cyclic = true,        
        duration = 60 * 60,

        fade_away_duration = 2 * 60,
        spread_duration = 20,
        color = {r = 115/256, g = 178/256, b = 125/256, a = 0.322},
        animation =
        {
          width = 152,
          height = 120,
          line_length = 5,
          frame_count = 60,
          shift = {-0.53125, -0.4375},
          priority = "high",
          animation_speed = 0.25,
          filename = "__base__/graphics/entity/smoke/smoke.png",
          flags = { "smoke" }
        },
    
        created_effect =
        {
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "create-smoke",
                  show_in_tooltip = false,
                  entity_name = "scourge-cloud-visual-dummy",
                  initial_height = 0
                }
              }
            }
          }
        },
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "nested-result",
              action =
                {
                {
                    entity_flags = {"placeable-enemy"},
                    type = "area",
                    radius = 3,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            type = "damage",
                            damage = { amount = scourge_damage, type = "scourge"}
                        }
                    }
                },
            }
            }
        }
        },
        action_cooldown = 30
      },
    }
)



warheads["biter-scourge-tiny"] = {
    name = "tiny-scourge-capsule",
    size = "tiny",
    preciseSize = 2,
    appendName = "-tiny-scourge-capsule",
    appendOrder = "x-y-z",
    appearance = createAppearance({type = "can_1", style = 1, tints = {scourgeColor, scourgeColor}}),
    energy_required = 1,
    cooldown_modifier = .7,
    tech = "scourge",
    stack_size = 100,
    clamp_position = true,
    warhead_count_per_item = 10,
    ingredients = {
        {"scourge-vial",1},
        {"steel-plate",1}
    },
    final_action =  {
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-smoke",
                show_in_tooltip = true,
                entity_name = "scourge-cloud-t",
                initial_height = 0
              },
              {
                type = "create-entity",
                entity_name = "explosion"
                }
            }
          }
        },
        
      },
      

}

warheads["biter-scourge-small"] = {
        name = "small-scourge-capsule",
        size = "small",
        preciseSize = 16,
        appendName = "-small-scourge-capsule",
        appendOrder = "x-y-z",
        appearance = createAppearance({type = "can_1", style = 3, tints = {scourgeColor, scourgeColor}}),
        energy_required = 1,
        tech = "scourge",
        stack_size = 100,
         cooldown_modifier = .7,
        clamp_position = true,
        ingredients = {
            {"scourge-vial",1},
            {"explosive", 1},
            {"steel-plate",1}
        },
        final_action =  {
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "create-smoke",
                    show_in_tooltip = true,
                    entity_name = "scourge-cloud",
                    initial_height = 0
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                    }
                }
              }
            },
            
          },
          

    }

    warheads["biter-scourge-medium"] = {
        name = "medium-scourge-capsule",
        size = "medium",
        preciseSize = 24,
        appendName = "-medium-scourge-capsule",
        appendOrder = "x-y-z",
        appearance = createAppearance({type = "can_2", style = 1, tints = {scourgeColor,scourgeColor}}),
        energy_required = 1,
        tech = "scourge",
        cooldown_modifier = .7,
        stack_size = 100,
        clamp_position = true,
        ingredients = {
            {"scourge-vial",5},
            {"explosive", 2},
            {"steel-plate",5}

        },
        final_action = 
        {
            {
              type = "direct",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "create-smoke",
                    show_in_tooltip = true,
                    entity_name = "scourge-cloud-m",
                    initial_height = 0
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                    }
                }
              }
            }
          },

}

warheads["biter-scourge-large"] = {
    name = "large-scourge-capsule",
    size = "large",
    preciseSize = 32,
    appendName = "-large-scourge-capsule",
    appendOrder = "x-y-z",
    appearance = createAppearance({type = "can_3", style = 1, tints = {scourgeColor,scourgeColor}}),
    energy_required = 1,
    stack_size = 100,
    cooldown_modifier = .7,
    tech = "scourge",
    clamp_position = true,
    ingredients = {
        {"scourge-vial",10},
        {"explosive", 3},
        {"steel-plate",10}
    },
    final_action =  {
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-smoke",
                show_in_tooltip = true,
                entity_name = "scourge-cloud-l",
                initial_height = 0
              },
              {
                type = "create-entity",
                entity_name = "explosion"
                }
            }
          }
        }
      },

}