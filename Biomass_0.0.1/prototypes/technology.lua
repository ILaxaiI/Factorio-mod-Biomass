data:extend({
    {
        type = "technology",
        name = "biomass-seperation",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__Biomass__/graphics/icons/dead_tissue.png",
        prerequisites = {},
        unit =
        {
          count = 30,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
          },
          time = 15
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "biomass-seperation"
            }
        }
    },
    {
    type = "technology",
    name = "alien-science",
    icon_size = 64, icon_mipmaps = 4,
    icon = "__Biomass__/graphics/icons/alien-science-pack.png",
    prerequisites = {"chemical-science-pack","biomass-seperation",},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack",1}
      },
      time = 30
    },
    effects = {
            {
            type = "unlock-recipe",
            recipe = "alien-science-pack"
            }
        }
    },
    {
        type = "technology",
        name = "bio-fuel-creation",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__Biomass__/graphics/icons/bio-fuel.png",
        prerequisites = {"alien-science"},
        unit =
        {
          count = 100,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack",1},
            {"alien-science-pack",1}
          },
          time = 30
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "bio-fuel-creation",
            },
            {
                type = "unlock-recipe",
                recipe = "bio-fuel-cracking",
            }
        }
    },
    {
        type = "technology",
        name = "bio-fuel-generator",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/icons/boiler.png",
            prerequisites = {"bio-fuel-creation",},
            unit =
            {
              count = 800,
              ingredients =
              {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack",1},
                {"alien-science-pack",1}
              },
              time = 30
            },
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "bio-fuel-generator",
                },
                {
                    type = "unlock-recipe",
                    recipe = "steam-turbine"
                }
            }
            },
  

                {
                    type = "technology",
                    name = "growth-vat",
                    icon_size = 256, icon_mipmaps = 4,
                    icon = "__Biomass__/graphics/technology/growth-vat.png",
                    prerequisites = {"alien-science"},
                    unit =
                    {
                      count = 200,
                      ingredients =
                      {
                        {"automation-science-pack", 1},
                        {"logistic-science-pack", 1},
                        {"chemical-science-pack",1},
                        {"alien-science-pack",1},
                      },
                      time = 30
                    },
                    effects = {
                        {
                            type = "unlock-recipe",
                            recipe = "growth-vat",
                        },
                        {
                            type = "unlock-recipe",
                            recipe = "grow-tissue",
                        }
                    }
                    },
                
            {
                type = "technology",
                name = "bio-chip",
                icon_size = 64, icon_mipmaps = 4,
                icon = "__Biomass__/graphics/icons/bio_chip.png",
                prerequisites = {"growth-vat","speed-module-3","productivity-module-3"},
                unit =
                {
                  count = 400,
                  ingredients =
                  {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack",1},
                    {"production-science-pack",1},
                    {"alien-science-pack",1}
                  },
                  time = 30
                },
                effects = {
                    {
                        type = "unlock-recipe",
                        recipe = "bio-chip",
                    }, 
                    {
                        type = "unlock-recipe",
                        recipe = "productivity-module-4",
                    },
                    {
                        type = "unlock-recipe",
                        recipe = "speed-module-4",
                    },
                }
                },
                {
                    type = "technology",
                    name = "scourge",
                    icon_size = 256, icon_mipmaps = 4,
                    icon = "__Biomass__/graphics/technology/scourge-vial.png",
                    prerequisites = {"growth-vat",},
                    unit =
                    {
                      count = 1000,
                      ingredients =
                      {
                        {"automation-science-pack", 1},
                        {"logistic-science-pack", 1},
                        {"military-science-pack",1},
                        {"chemical-science-pack",1},
                        {"alien-science-pack",1}
                      },
                      time = 30
                    },
                    effects = {
                        {
                            type = "unlock-recipe",
                            recipe = "scourge-vial",
                        },

                    }
                    },

})