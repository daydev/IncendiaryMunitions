data:extend({
    {
        type = "ammo",
        name = "incendiary-rounds-magazine",
        icon = "__IncendiaryMunitions__/graphics/icons/incendiary-rounds-magazine.png",
        flags = { "goes-to-main-inventory" },
        ammo_type =
        {
            category = "bullet",
            action =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        source_effects =
                        {
                            type = "create-explosion",
                            entity_name = "explosion-gunshot"
                        },
                        target_effects =
                        {
                            {
                                type = "create-entity",
                                entity_name = "explosion-hit"
                            },
                            {
                                type = "damage",
                                damage = { amount = 6, type = "physical" }
                            },
                            {
                                type = "damage",
                                damage = { amount = 2, type = "fire" }
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            },
                            {
                                type = "create-sticker",
                                sticker = "fire-sticker"
                            }
                        }
                    }
                },
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "projectile",
                        projectile = "incendiary-bullet-trace",
                        starting_speed = 1,
                        direction_deviation = 0.05,
                        range_deviation = 0.0,
                        max_range = 15,
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-c[incendiary-rounds-magazine]",
        stack_size = 200
    },
    {
        type = "ammo",
        name = "incendiary-shotgun-shell",
        icon = "__IncendiaryMunitions__/graphics/icons/incendiary-shotgun-shell.png",
        flags = { "goes-to-main-inventory" },
        ammo_type =
        {
            category = "shotgun-shell",
            target_type = "direction",
            action =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        source_effects =
                        {
                            {
                                type = "create-explosion",
                                entity_name = "explosion-gunshot"
                            }
                        }
                    }
                },
                {
                    type = "direct",
                    repeat_count = 12,
                    action_delivery =
                    {
                        type = "projectile",
                        projectile = "incendiary-shotgun-pellet",
                        starting_speed = 1,
                        direction_deviation = 0.3,
                        range_deviation = 0.3,
                        max_range = 15,
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ammo",
        order = "b[shotgun]-c[incendiary]",
        stack_size = 200
    }
})