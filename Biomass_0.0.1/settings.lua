data:extend({
    {
        type = "int-setting",
        name = "Lax-bio-max-richness",
        setting_type = "runtime-global",
        default_value = 980,
        minimum_value = 1,
        maximum_value  = 10000,
        order = "tg"
    },
    {
        type = "int-setting",
        name = "Lax-bio-base-richness",
        setting_type = "runtime-global",
        default_value = 30,
        minimum_value = 1,
        maximum_value  = 10000,
        order = "tg"
    },
    {
        type = "int-setting",
        name = "Lax-bio-scourge-dmg",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 1,
        maximum_value  = 1000,
        order = "tg"
    },
})