data:extend({
{
    name = "biomass-seperation",
    icon = "__Biomass__/graphics/biomass/biomass-resource.png",
    icon_size = 64,
    enabled = false,
    icon_mipmaps = 4,
    type="recipe",
    category = "crafting",
    subgroup = "raw-material",
    ingredients = {{"biomass-ore",5}},
    results = {
        {type = "item", name = "dead-tissue",amount_min = 2,amount_max = 3},
        {type = "item", name = "living-tissue",probability = 0.2,amount_min = 1,amount_max=2}
    }

},

{
    name = "bio-fuel-creation",
    icon = "__Biomass__/graphics/icons/bio-fuel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    enabled = false,
    type="recipe",
    category = "chemistry",
    subgroup = "raw-material",
    ingredients = {
        {type = "item", name = "dead-tissue",amount = 2},
        --{type = "item",name = "wood",amount = 1},
        {type = "fluid",name = "water", amount = 40}},
    results = {
        {type = "fluid", name = "bio-fuel",amount = 40},
    }

},
{
    name = "bio-fuel-cracking",  
    enabled = false,
    icon = "__Biomass__/graphics/icons/biofuel-cracking.png",
    icon_size = 64,
    icon_mipmaps = 4,
    type="recipe",
    category = "chemistry",
    subgroup = "raw-material",
    ingredients = {{type = "fluid", name = "bio-fuel",amount = 40},{type = "fluid",name = "petroleum-gas", amount = 40}},
    results = {
        {type = "fluid", name = "petroleum-gas",amount = 80},
    }

},
{
    enabled = false,
    name = "bio-fuel-generator",
    icon = "__base__/graphics/icons/boiler.png",
    icon_size = 64,
    icon_mipmaps = 4,
    type="recipe",
    category = "crafting",
    subgroup = "energy",
    ingredients = {{"steel-plate",20},{"boiler",1},{"advanced-circuit",5},{"copper-plate",20}},
    results = {
        {type = "item", name = "bio-fuel-generator",amount = 1},
    }

},
{
    type = "recipe",
    name = "growth-vat",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"plastic-bar", 100},
      {"steel-plate", 50},
      {"advanced-circuit", 100},
    },
    result = "growth-vat",
    requester_paste_multiplier= 10
  },

{
    name = "lax-bio-alien-science-pack",
    enabled = false,
    type = "recipe",
    category = "chemistry",
    ingredients = {
        {type = "item",name = "living-tissue",amount = 2},{type = "item",name = "advanced-circuit",amount = 2},
        --{type = "item", name = "wood",amount = 4},
        {type = "fluid", name = "bio-fuel",amount = 5}
    },
    result = "lax-bio-alien-science-pack",
    amount = 1,
},
{
    name = "bio-chip",
    type = "recipe",
    category = "growth-vat-crafting",
    enabled = false,
    ingredients = {
        {type = "item", name = "living-tissue", amount = 10},
        {type = "item", name = "processing-unit", amount = 1}
    },
    energy_required = 10,
    result = "bio-chip",
    amount = 1
},
{
    name = "grow-tissue",
    enabled = false,
    type = "recipe",
    icon = "__Biomass__/graphics/icons/grow-tissue.png",
    icon_mipmaps = 4,
    icon_size = 64,
    category = "growth-vat-crafting",
    ingredients = {
        {type = "item", name = "living-tissue", amount = 10},
        {type = "item", name = "dead-tissue", amount = 20}
    },
    energy_required = 10,
    results = {
        {type = "item", name = "living-tissue",amount_min = 10,amount_max = 11},
        {type = "item", name = "dead-tissue",amount_min = 19,amount_max = 20}
    },
    subgroup = "intermediate-product",
    amount = 1
},
{
    name = "productivity-module-4",
    type = "recipe",
    enabled = false,
    category = "advanced-crafting",
    ingredients = {
      {type = "item",name = "productivity-module-3",amount = 2},
      {type = "item", name = "bio-chip", amount = 3}
    },
    energy_required = 10,
    result = "productivity-module-4",
    amount = 1
},
{
    name = "speed-module-4",
    type = "recipe",
    enabled = false,
    category = "advanced-crafting",
    ingredients = {
      {type = "item",name = "speed-module-3",amount =  2},
      {type = "item", name = "bio-chip", amount = 3}
    },
    energy_required = 10,
    result = "speed-module-4",
    amount = 1
},
{
    name = "scourge-vial",
    type = "recipe",
    enabled = false,
    category = "growth-vat-crafting",
    ingredients = {
        {"plastic-bar",5},
        {"living-tissue",5}
    },
    result = "scourge-vial",
    amount = 1,
    energy_required = 5
}

})
