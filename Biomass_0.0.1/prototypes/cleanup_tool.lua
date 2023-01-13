data:extend({
    {
        name = "sweep-biomass",
        stack_size = 1,
        icon = "__base__/graphics/icons/deconstruction-planner.png",
        icon_size = 64, icon_mipmaps = 4,
        type = "selection-tool",
        flags = {"hidden", "spawnable"},
        selection_color = {1,0,0,1},
        alt_selection_color = {1,0,0,1},
        selection_mode = {"any-entity",},
        alt_selection_mode = {"any-entity"},
        selection_cursor_box_type = "entity",
        alt_selection_cursor_box_type = "entity",
        entity_filters = {"biomass"},
        entity_type_filters = {"resource"},
        entity_filter_mode = "whitelist",
        alt_entity_filter_mode = "whitelist"
    },
    {
        type = "shortcut",
        name = "sweep-biomass",
        action = "spawn-item",
        item_to_spawn = "sweep-biomass",
        style = "default",
        icon = {
            filename = "__base__/graphics/icons/deconstruction-planner.png",
            priority = "extra-high-no-scale",
            size = 64,
            icon_mipmaps = 4,
            scale = 1,
            flags = {"icon"},
        },

    }
})