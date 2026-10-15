-- Enhancements.lua

-- -- -- -- -- -- -- --
-- ["Head"] = {},
-- ["Neck"] = {},
-- ["Shoulder"] = {},
-- ["Back"] = {},
-- ["Chest"] = {},
-- ["Wrist"] = {},
-- ["Hands"] = {},
-- ["Waist"] = {},
-- ["Legs"] = {},
-- ["Feet"] = {},

-- ["Finger 1"] = {},
-- ["Finger 2"] = {},

-- ["Trinket 1"] = {},
-- ["Trinket 2"] = {},

-- ["Weapon"] = {},
-- ["Main hand"] = {},
-- ["Two hand"] = {},
-- ["Off hand"] = {},

-- ["Ranged"] = {}
-- -- -- -- -- -- -- --

BisTooltip_Enhancements = BisTooltip_Enhancements or {}

-- Death Knight
BisTooltip_Enhancements["Death Knight"] = BisTooltip_Enhancements["Death Knight"] or {}

-- -- Blood Tank (Death Knight)
BisTooltip_Enhancements["Death Knight"]["Blood Tank"] = {}
BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40008 -- Solid Sky Sapphire
    },
    ["Shoulder"] = {
        -62384 -- Greater Inscription of the Gladiator
    },
    ["Back"] = {
        -47672 -- Cloak - Mighty Armor
    },
    ["Chest"] = {
        -47900, -- Chest - Super Health
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Wrist"] = {
        -62256 -- Bracer - Major Stamina
    },
    ["Hands"] = {
        -44769, -- Glove Reinforcements
        40008 -- Solid Sky Sapphire
    },
    ["Waist"] = {
        40089, -- Enduring Forest Emerald
        40008 -- Solid Sky Sapphire
    },
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40022 -- Sovereign Twilight Opal
    },
    ["Feet"] = {
        -47901 -- Boots - Tuskarr's Vitality
    },
    ["Finger 1"] = {
        40008 -- Solid Sky Sapphire
    },
    ["Weapon"] = {
        -62158 -- Rune of the Stoneskin Gargoyle
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40022 -- Sovereign Twilight Opal
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = {
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Legs"] = {
        -60581 -- Frosthide Leg Armor
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Neck"] = {
        40088 -- Vivid Forest Emerald
    },
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40008 -- Solid Sky Sapphire
    },
    ["Back"] = {
        -47672, -- Cloak - Mighty Armor
        40022 -- Sovereign Twilight Opal
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        -44769, -- Glove Reinforcements
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Waist"] = {
        40008 -- Solid Sky Sapphire
    },
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40022, -- Sovereign Twilight Opal
        40008, -- Solid Sky Sapphire
        40088 -- Vivid Forest Emerald
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Finger 1"] = {
        40088 -- Vivid Forest Emerald
    },
    ["Finger 2"] = {
        40008 -- Solid Sky Sapphire
    },
    ["Weapon"] = {
        -62158, -- Rune of the Stoneskin Gargoyle
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40166 -- Vivid Eye of Zul
    },
    ["Neck"] = {
        40119 -- Solid Majestic Zircon
    },
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40119 -- Solid Majestic Zircon
    },
    ["Back"] = {
        -47672, -- Cloak - Mighty Armor
        40119 -- Solid Majestic Zircon
    },
    ["Chest"] = {
        -47900, -- Chest - Super Health
        40119, -- Solid Majestic Zircon
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        -62256, -- Bracer - Major Stamina
        40119 -- Solid Majestic Zircon
    },
    ["Hands"] = {
        -44769, -- Glove Reinforcements
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Waist"] = {
        40129, -- Sovereign Dreadstone
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40119, -- Solid Majestic Zircon
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Finger 1"] = {
        40119 -- Solid Majestic Zircon
    },
    ["Weapon"] = {
        -62158, -- Rune of the Stoneskin Gargoyle
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40129 -- Sovereign Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        -47900, -- Chest - Super Health
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = {
        -44769, -- Glove Reinforcements
        40119 -- Solid Majestic Zircon
    },
    ["Waist"] = {
        40119, -- Solid Majestic Zircon
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40166, -- Vivid Eye of Zul
        40119 -- Solid Majestic Zircon
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        40119 -- Solid Majestic Zircon
    },
    ["Weapon"] = {
        -62158, -- Rune of the Stoneskin Gargoyle
        40119, -- Solid Majestic Zircon
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40166, -- Vivid Eye of Zul
        40119 -- Solid Majestic Zircon
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Weapon"]
}

-- -- Frost (Death Knight)
BisTooltip_Enhancements["Death Knight"]["Frost"] = {}
BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        42702 -- Enchanted Tear
    },
    ["Neck"] = {
        39996 -- Bold Scarlet Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Back"] = {
        -47898 -- Cloak - Greater Speed
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Wrist"] = {
        -44575 -- Bracer - Greater Assault
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        39996 -- Bold Scarlet Ruby
    },
    ["Waist"] = {
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        39996 -- Bold Scarlet Ruby
    },
    ["Weapon"] = {
        -53343 -- Rune of Razorice
    },
    ["Off hand"] = {
        -53344 -- Rune of the Fallen Crusader
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        39996 -- Bold Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        39996 -- Bold Scarlet Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = {
        -60763 -- Boots - Greater Assault
    },
    ["Finger 2"] = {
        39996 -- Bold Scarlet Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40037 -- Inscribed Monarch Topaz
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40037, -- Inscribed Monarch Topaz
        39996 -- Bold Scarlet Ruby
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Hands"],
    ["Waist"] = {
        39996, -- Bold Scarlet Ruby
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40037, -- Inscribed Monarch Topaz
        39996, -- Bold Scarlet Ruby
        42702 -- Enchanted Tear
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Finger 1"] = {
        39996 -- Bold Scarlet Ruby
    },
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        -53343, -- Rune of Razorice
        39996 -- Bold Scarlet Ruby
    },
    ["Off hand"] = {
        -53344, -- Rune of the Fallen Crusader
        39996 -- Bold Scarlet Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40142 -- Inscribed Ametrine
    },
    ["Neck"] = {
        40111 -- Bold Cardinal Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40111 -- Bold Cardinal Ruby
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40111 -- Bold Cardinal Ruby
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        49110, -- Nightmare Tear
        40111 -- Bold Cardinal Ruby
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40111 -- Bold Cardinal Ruby
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Waist"] = {
        40111, -- Bold Cardinal Ruby
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40142, -- Inscribed Ametrine
        40111 -- Bold Cardinal Ruby
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40142, -- Inscribed Ametrine
        40111 -- Bold Cardinal Ruby
    },
    ["Finger 1"] = {
        40142 -- Inscribed Ametrine
    },
    ["Finger 2"] = {
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Weapon"] = {
        -53343, -- Rune of Razorice
        40111 -- Bold Cardinal Ruby
    },
    ["Off hand"] = {
        -53344, -- Rune of the Fallen Crusader
        40111 -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40117 -- Fractured Cardinal Ruby
    },
    ["Neck"] = {
        40117 -- Fractured Cardinal Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40117 -- Fractured Cardinal Ruby
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40117 -- Fractured Cardinal Ruby
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40117, -- Fractured Cardinal Ruby
        49110 -- Nightmare Tear
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40117 -- Fractured Cardinal Ruby
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40117 -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        40125, -- Rigid King's Amber
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40117, -- Fractured Cardinal Ruby
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40125, -- Rigid King's Amber
        40117 -- Fractured Cardinal Ruby
    },
    ["Finger 1"] = {
        40117 -- Fractured Cardinal Ruby
    },
    ["Finger 2"] = {
        40117 -- Fractured Cardinal Ruby
    },
    ["Weapon"] = {
        -53343, -- Rune of Razorice
        40117 -- Fractured Cardinal Ruby
    },
    ["Off hand"] = {
        -53344, -- Rune of the Fallen Crusader
        40117 -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Hands"],
    ["Waist"] = {
        40143, -- Etched Ametrine
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Off hand"]
}

-- -- Unholy (Death Knight)
BisTooltip_Enhancements["Death Knight"]["Unholy"] = {}
BisTooltip_Enhancements["Death Knight"]["Unholy"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        -33995, -- Gloves - Major Strength
        39996 -- Bold Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        -53344 -- Rune of the Fallen Crusader
    },
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["PR"]["Hands"],
    ["Waist"] = {
        39996 -- Bold Scarlet Ruby
    },
    ["Legs"] = {
        -60582 -- Icescale Leg Armor
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T8"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40041 -- Fierce Monarch Topaz
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        39996 -- Bold Scarlet Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = {
        -33995 -- Gloves - Major Strength
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40041, -- Fierce Monarch Topaz
        39996, -- Bold Scarlet Ruby
        42702 -- Enchanted Tear
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Weapon"] = {
        -53344, -- Rune of the Fallen Crusader
        39996 -- Bold Scarlet Ruby
    },
    ["Off hand"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Off hand"]
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40146 -- Fierce Ametrine
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Wrist"],
    ["Hands"] = {
        -33995, -- Gloves - Major Strength
        40111 -- Bold Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        49110, -- Nightmare Tear
        40111, -- Bold Cardinal Ruby
        40146 -- Fierce Ametrine
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Finger 1"] = {
        40111 -- Bold Cardinal Ruby
    },
    ["Finger 2"] = {
        40111 -- Bold Cardinal Ruby
    },
    ["Weapon"] = {
        40111 -- Bold Cardinal Ruby
    },
    ["Off hand"] = {
        40111 -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40111 -- Bold Cardinal Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40146 -- Fierce Ametrine
    },
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40146 -- Fierce Ametrine
    },
    ["Hands"] = {
        -33995, -- Gloves - Major Strength
        40146 -- Fierce Ametrine
    },
    ["Waist"] = {
        40146, -- Fierce Ametrine
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40146, -- Fierce Ametrine
        40111, -- Bold Cardinal Ruby
        49110 -- Nightmare Tear
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40146, -- Fierce Ametrine
        40111 -- Bold Cardinal Ruby
    },
    ["Finger 1"] = {
        40146 -- Fierce Ametrine
    },
    ["Finger 2"] = {
        40146 -- Fierce Ametrine
    },
    ["Weapon"] = {
        -53344, -- Rune of the Fallen Crusader
        40111, -- Bold Cardinal Ruby
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Death Knight"]["Unholy"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = {
        40143 -- Etched Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Weapon"]
}

-- Druid
BisTooltip_Enhancements["Druid"] = BisTooltip_Enhancements["Druid"] or {}

-- -- Balance (Druid)
BisTooltip_Enhancements["Druid"]["Balance"] = {}
BisTooltip_Enhancements["Druid"]["Balance"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40049 -- Veiled Monarch Topaz
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40049, -- Veiled Monarch Topaz
        40014 -- Rigid Autumn's Glow
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39998, -- Runed Scarlet Ruby
        40026 -- Purified Twilight Opal
    },
    ["Wrist"] = {
        -60767 -- Bracer - Superior Spellpower
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        39998 -- Runed Scarlet Ruby
    },
    ["Waist"] = {
        40014, -- Rigid Autumn's Glow
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        -55631 -- Brilliant Spellthread
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998 -- Runed Scarlet Ruby
    },
    ["Finger 2"] = {
        40026 -- Purified Twilight Opal
    },
    ["Weapon"] = {
        -60714 -- Weapon - Mighty Spellpower
    }
}

BisTooltip_Enhancements["Druid"]["Balance"]["T7"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        39998 -- Runed Scarlet Ruby
    },
    ["Neck"] = {
        40026 -- Purified Twilight Opal
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        39998 -- Runed Scarlet Ruby
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40026 -- Purified Twilight Opal
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        39998 -- Runed Scarlet Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Balance"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = {
        40048 -- Potent Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40048 -- Potent Monarch Topaz
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40048, -- Potent Monarch Topaz
        39998, -- Runed Scarlet Ruby
        40026 -- Purified Twilight Opal
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Waist"] = {
        40048, -- Potent Monarch Topaz
        40048, -- Potent Monarch Topaz
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998, -- Runed Scarlet Ruby
        40026 -- Purified Twilight Opal
    },
    ["Finger 1"] = {
        39998 -- Runed Scarlet Ruby
    },
    ["Finger 2"] = {
        39998 -- Runed Scarlet Ruby
    },
    ["Weapon"] = {
        -60714, -- Weapon - Mighty Spellpower
        39998 -- Runed Scarlet Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Balance"]["T9"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40153 -- Veiled Ametrine
    },
    ["Neck"] = {
        40155 -- Reckless Ametrine
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40155 -- Reckless Ametrine
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40113 -- Runed Cardinal Ruby
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40113, -- Runed Cardinal Ruby
        40133 -- Purified Dreadstone
    },
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40155 -- Reckless Ametrine
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40113 -- Runed Cardinal Ruby
    },
    ["Waist"] = {
        40133, -- Purified Dreadstone
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40133, -- Purified Dreadstone
        40113 -- Runed Cardinal Ruby
    },
    ["Finger 1"] = {
        40155 -- Reckless Ametrine
    },
    ["Finger 2"] = {
        40113 -- Runed Cardinal Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Balance"]["T10"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40113 -- Runed Cardinal Ruby
    },
    ["Neck"] = {
        40113 -- Runed Cardinal Ruby
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40113 -- Runed Cardinal Ruby
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40155 -- Reckless Ametrine
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40113, -- Runed Cardinal Ruby
        40155 -- Reckless Ametrine
    },
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40113 -- Runed Cardinal Ruby
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40133, -- Purified Dreadstone
        40113 -- Runed Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40155 -- Reckless Ametrine
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = {
        -60714, -- Weapon - Mighty Spellpower
        40113 -- Runed Cardinal Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Balance"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40113, -- Runed Cardinal Ruby
        40153 -- Veiled Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40153 -- Veiled Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = {
        40153 -- Veiled Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"]
}

-- -- Feral Tank (Druid)
BisTooltip_Enhancements["Druid"]["Feral Tank"] = {}
BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Neck"] = {
        40023 -- Shifting Twilight Opal
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40008, -- Solid Sky Sapphire
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = {
        40008, -- Solid Sky Sapphire
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40008 -- Solid Sky Sapphire
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Finger 2"],
    ["Weapon"] = {
        -64579 -- Weapon - Blood Draining
    }
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40023 -- Shifting Twilight Opal
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Waist"],
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40008 -- Solid Sky Sapphire
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T8"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40023 -- Shifting Twilight Opal
    },
    ["Neck"] = {
        40008 -- Solid Sky Sapphire
    },
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40008, -- Solid Sky Sapphire
        40023 -- Shifting Twilight Opal
    },
    ["Back"] = {
        -47672, -- Cloak - Mighty Armor
        40008 -- Solid Sky Sapphire
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Chest"],
    ["Wrist"] = {
        -62256, -- Bracer - Major Stamina
        40008 -- Solid Sky Sapphire
    },
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Waist"],
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40008, -- Solid Sky Sapphire
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40119 -- Solid Majestic Zircon
    },
    ["Neck"] = {
        40130 -- Shifting Dreadstone
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40119, -- Solid Majestic Zircon
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Weapon"] = {
        -64579, -- Weapon - Blood Draining
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40130 -- Shifting Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Finger 2"],
    ["Weapon"] = {
        -64579, -- Weapon - Blood Draining
        40119, -- Solid Majestic Zircon
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Druid"]["Feral Tank"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Weapon"]
}

-- -- Feral DPS (Druid)
BisTooltip_Enhancements["Druid"]["Feral DPS"] = {}
BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        39997 -- Delicate Scarlet Ruby
    },
    ["Back"] = {
        -60663 -- Cloak - Major Agility
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40014, -- Rigid Autumn's Glow
        40014 -- Rigid Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        39997 -- Delicate Scarlet Ruby
    },
    ["Waist"] = {
        40014, -- Rigid Autumn's Glow
        40014 -- Rigid Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = {
        -44589 -- Boots - Superior Agility
    },
    ["Finger 2"] = {
        40014 -- Rigid Autumn's Glow
    },
    ["Weapon"] = {
        -59621 -- Weapon - Berserking
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        39997 -- Delicate Scarlet Ruby
    },
    ["Neck"] = {
        39997 -- Delicate Scarlet Ruby
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39997 -- Delicate Scarlet Ruby
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        39997 -- Delicate Scarlet Ruby
    },
    ["Hands"] = {
        -60668 -- Gloves - Crusher
    },
    ["Waist"] = {
        40014 -- Rigid Autumn's Glow
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        39997, -- Delicate Scarlet Ruby
        42702 -- Enchanted Tear
    },
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40044 -- Glinting Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40002 -- Fractured Scarlet Ruby
    },
    ["Neck"] = {
        40002 -- Fractured Scarlet Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40002, -- Fractured Scarlet Ruby
        40002 -- Fractured Scarlet Ruby
    },
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40002, -- Fractured Scarlet Ruby
        40014 -- Rigid Autumn's Glow
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40002, -- Fractured Scarlet Ruby
        40002, -- Fractured Scarlet Ruby
        40002 -- Fractured Scarlet Ruby
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40014 -- Rigid Autumn's Glow
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40002 -- Fractured Scarlet Ruby
    },
    ["Waist"] = {
        40002, -- Fractured Scarlet Ruby
        40002, -- Fractured Scarlet Ruby
        40002 -- Fractured Scarlet Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40044, -- Glinting Monarch Topaz
        40002, -- Fractured Scarlet Ruby
        42702 -- Enchanted Tear
    },
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Finger 1"] = {
        39997 -- Delicate Scarlet Ruby
    },
    ["Finger 2"] = {
        39997 -- Delicate Scarlet Ruby
    },
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40002, -- Fractured Scarlet Ruby
        40002 -- Fractured Scarlet Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40117 -- Fractured Cardinal Ruby
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40117, -- Fractured Cardinal Ruby
        40142 -- Inscribed Ametrine
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40118, -- Precise Cardinal Ruby
        40118 -- Precise Cardinal Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Hands"],
    ["Waist"] = {
        40142, -- Inscribed Ametrine
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40142, -- Inscribed Ametrine
        40117, -- Fractured Cardinal Ruby
        49110 -- Nightmare Tear
    },
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40142, -- Inscribed Ametrine
        40117 -- Fractured Cardinal Ruby
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40117, -- Fractured Cardinal Ruby
        40162 -- Accurate Ametrine
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40162 -- Accurate Ametrine
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40143, -- Etched Ametrine
        40117 -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        40117, -- Fractured Cardinal Ruby
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40117, -- Fractured Cardinal Ruby
        40143 -- Etched Ametrine
    },
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40125, -- Rigid King's Amber
        40125 -- Rigid King's Amber
    },
    ["Finger 1"] = {
        40125 -- Rigid King's Amber
    },
    ["Finger 2"] = {
        40125 -- Rigid King's Amber
    },
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40117, -- Fractured Cardinal Ruby
        49110, -- Nightmare Tear
        40125 -- Rigid King's Amber
    }
}

BisTooltip_Enhancements["Druid"]["Feral DPS"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40111 -- Bold Cardinal Ruby
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40111, -- Bold Cardinal Ruby
        40162 -- Accurate Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40162, -- Accurate Ametrine
        40117 -- Fractured Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40117, -- Fractured Cardinal Ruby
        40125 -- Rigid King's Amber
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Weapon"]
}

-- -- Restoration (Druid)
BisTooltip_Enhancements["Druid"]["Restoration"] = {}
BisTooltip_Enhancements["Druid"]["Restoration"]["PR"] = {
    ["Head"] = {
        -59960, -- Arcanum of Blissful Mending
        41401, -- Insightful Earthsiege Diamond
        40017 -- Quick Autumn's Glow
    },
    ["Shoulder"] = {
        -59936, -- Greater Inscription of the Crag
        40026, -- Purified Twilight Opal
        39998 -- Runed Scarlet Ruby
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        39998 -- Runed Scarlet Ruby
    },
    ["Chest"] = {
        -60692 -- Chest - Powerful Stats
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = {
        -44592 -- Gloves - Exceptional Spellpower
    },
    ["Waist"] = {
        40017 -- Quick Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40026 -- Purified Twilight Opal
    },
    ["Weapon"] = {
        -62948 -- Staff - Greater Spellpower
    }
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Head"],
    ["Shoulder"] = {
        -59936, -- Greater Inscription of the Crag
        39998 -- Runed Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Chest"],
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40051 -- Reckless Monarch Topaz
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40017 -- Quick Autumn's Glow
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40017 -- Quick Autumn's Glow
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T8"] = {
    ["Head"] = {
        -59960, -- Arcanum of Blissful Mending
        41401, -- Insightful Earthsiege Diamond
        39998 -- Runed Scarlet Ruby
    },
    ["Neck"] = {
        39998 -- Runed Scarlet Ruby
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40017, -- Quick Autumn's Glow
        39998, -- Runed Scarlet Ruby
        40026 -- Purified Twilight Opal
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        39998, -- Runed Scarlet Ruby
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40104, -- Intricate Forest Emerald
        39998 -- Runed Scarlet Ruby
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998, -- Runed Scarlet Ruby
        40017 -- Quick Autumn's Glow
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = {
        40017 -- Quick Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T9"] = {
    ["Head"] = {
        -59960, -- Arcanum of Blissful Mending
        41401, -- Insightful Earthsiege Diamond
        40133 -- Purified Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = {
        -59936, -- Greater Inscription of the Crag
        40113 -- Runed Cardinal Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40155, -- Reckless Ametrine
        40133, -- Purified Dreadstone
        40155 -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40155 -- Reckless Ametrine
    },
    ["Waist"] = {
        40155, -- Reckless Ametrine
        40155, -- Reckless Ametrine
        40155 -- Reckless Ametrine
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40133 -- Purified Dreadstone
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = {
        40113 -- Runed Cardinal Ruby
    },
    ["Finger 2"] = {
        40155 -- Reckless Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        40155 -- Reckless Ametrine
    }
}

BisTooltip_Enhancements["Druid"]["Restoration"]["T10"] = {
    ["Head"] = {
        -59960, -- Arcanum of Blissful Mending
        41401, -- Insightful Earthsiege Diamond
        40113 -- Runed Cardinal Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40133, -- Purified Dreadstone
        40113, -- Runed Cardinal Ruby
        40155 -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        40155, -- Reckless Ametrine
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Druid"]["Restoration"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

-- Hunter
BisTooltip_Enhancements["Hunter"] = BisTooltip_Enhancements["Hunter"] or {}

-- -- Beast Mastery (Hunter)
BisTooltip_Enhancements["Hunter"]["Beast Mastery"] = {}
BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39997, -- Delicate Scarlet Ruby
        42702 -- Enchanted Tear
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40043 -- Deadly Monarch Topaz
    },
    ["Waist"] = {
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Finger 2"] = {
        40043 -- Deadly Monarch Topaz
    },
    ["Weapon"] = {
        -60691 -- 2H Weapon - Massacre
    },
    ["Ranged"] = {
        -55135 -- Heartseeker Scope
    }
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40014 -- Rigid Autumn's Glow
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40014 -- Rigid Autumn's Glow
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40044 -- Glinting Monarch Topaz
    },
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        39997, -- Delicate Scarlet Ruby
        40043 -- Deadly Monarch Topaz
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39997, -- Delicate Scarlet Ruby
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40043 -- Deadly Monarch Topaz
    },
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Waist"] = {
        39997 -- Delicate Scarlet Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        39997, -- Delicate Scarlet Ruby
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = {
        -60691, -- 2H Weapon - Massacre
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40148 -- Glinting Ametrine
    },
    ["Neck"] = {
        40112 -- Delicate Cardinal Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40112 -- Delicate Cardinal Ruby
    },
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40112 -- Delicate Cardinal Ruby
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40112, -- Delicate Cardinal Ruby
        40147 -- Deadly Ametrine
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40147 -- Deadly Ametrine
    },
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40147 -- Deadly Ametrine
    },
    ["Waist"] = {
        40147, -- Deadly Ametrine
        40112, -- Delicate Cardinal Ruby
        40112 -- Delicate Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        49110, -- Nightmare Tear
        40147, -- Deadly Ametrine
        40112 -- Delicate Cardinal Ruby
    },
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40147, -- Deadly Ametrine
        40147 -- Deadly Ametrine
    },
    ["Finger 1"] = {
        40112 -- Delicate Cardinal Ruby
    },
    ["Finger 2"] = {
        40112 -- Delicate Cardinal Ruby
    },
    ["Weapon"] = {
        -60691, -- 2H Weapon - Massacre
        40147, -- Deadly Ametrine
        40112 -- Delicate Cardinal Ruby
    },
    ["Ranged"] = {
        -55135, -- Heartseeker Scope
        40147 -- Deadly Ametrine
    }
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40117 -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        40147, -- Deadly Ametrine
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        49110, -- Nightmare Tear
        40117, -- Fractured Cardinal Ruby
        40148 -- Glinting Ametrine
    },
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40148, -- Glinting Ametrine
        40148 -- Glinting Ametrine
    },
    ["Finger 1"] = {
        40148 -- Glinting Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        -60691, -- 2H Weapon - Massacre
        40117, -- Fractured Cardinal Ruby
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Ranged"] = {
        -55135, -- Heartseeker Scope
        40117 -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40112 -- Delicate Cardinal Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40117, -- Fractured Cardinal Ruby
        40125 -- Rigid King's Amber
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Ranged"]
}

-- -- Marksmanship (Hunter)
BisTooltip_Enhancements["Hunter"]["Marksmanship"] = {}
BisTooltip_Enhancements["Hunter"]["Marksmanship"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Marksmanship"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40112 -- Delicate Cardinal Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Hands"],
    ["Waist"] = {
        40148, -- Glinting Ametrine
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Legs"],
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40117, -- Fractured Cardinal Ruby
        40148 -- Glinting Ametrine
    },
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Ranged"]
}

-- -- Survival (Hunter)
BisTooltip_Enhancements["Hunter"]["Survival"] = {}
BisTooltip_Enhancements["Hunter"]["Survival"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        39997 -- Delicate Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Wrist"],
    ["Hands"] = {
        -44529 -- Gloves - Major Agility
    },
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40044 -- Glinting Monarch Topaz
    },
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Hands"],
    ["Waist"] = {
        39997, -- Delicate Scarlet Ruby
        39997, -- Delicate Scarlet Ruby
        39997 -- Delicate Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Hunter"]["Survival"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40112, -- Delicate Cardinal Ruby
        49110 -- Nightmare Tear
    },
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Marksmanship"]["RS"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40112 -- Delicate Cardinal Ruby
    },
    ["Waist"] = {
        40148, -- Glinting Ametrine
        40112, -- Delicate Cardinal Ruby
        40112 -- Delicate Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40112, -- Delicate Cardinal Ruby
        40112, -- Delicate Cardinal Ruby
        40112 -- Delicate Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = {
        -60691, -- 2H Weapon - Massacre
        40112, -- Delicate Cardinal Ruby
        40112, -- Delicate Cardinal Ruby
        40112 -- Delicate Cardinal Ruby
    },
    ["Ranged"] = {
        -55135, -- Heartseeker Scope
        40112 -- Delicate Cardinal Ruby
    }
}

BisTooltip_Enhancements["Hunter"]["Survival"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40112, -- Delicate Cardinal Ruby
        40112 -- Delicate Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Hunter"]["Marksmanship"]["RS"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        49110, -- Nightmare Tear
        40112, -- Delicate Cardinal Ruby
        40148 -- Glinting Ametrine
    },
    ["Feet"] = {
        -44589, -- Boots - Superior Agility
        40112, -- Delicate Cardinal Ruby
        40148 -- Glinting Ametrine
    },
    ["Finger 1"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Hunter"]["Survival"]["T10"]["Ranged"]
}

-- Mage
BisTooltip_Enhancements["Mage"] = BisTooltip_Enhancements["Mage"] or {}

-- -- Arcane (Mage)
BisTooltip_Enhancements["Mage"]["Arcane"] = {}
BisTooltip_Enhancements["Mage"]["Arcane"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40051 -- Reckless Monarch Topaz
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        39998, -- Runed Scarlet Ruby
        40051 -- Reckless Monarch Topaz
    },
    ["Back"] = {
        -47898 -- Cloak - Greater Speed
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39998, -- Runed Scarlet Ruby
        40099 -- Shining Forest Emerald
    },
    ["Wrist"] = {
        -60767 -- Bracer - Superior Spellpower
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        39998 -- Runed Scarlet Ruby
    },
    ["Waist"] = {
        40049, -- Veiled Monarch Topaz
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        39998, -- Runed Scarlet Ruby
        40049 -- Veiled Monarch Topaz
    },
    ["Feet"] = {
        -60623, -- Boots - Icewalker
        40026 -- Purified Twilight Opal
    },
    ["Weapon"] = {
        -62948 -- Staff - Greater Spellpower
    }
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40051 -- Reckless Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40051 -- Reckless Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = {
        40051, -- Reckless Monarch Topaz
        40051, -- Reckless Monarch Topaz
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40051, -- Reckless Monarch Topaz
        40026 -- Purified Twilight Opal
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Finger 1"] = {
        40026 -- Purified Twilight Opal
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = {
        39998 -- Runed Scarlet Ruby
    }
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T9"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40133 -- Purified Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40133 -- Purified Dreadstone
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40133 -- Purified Dreadstone
    },
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40155, -- Reckless Ametrine
        40155 -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        40133 -- Purified Dreadstone
    },
    ["Weapon"] = {
        -60714, -- Weapon - Mighty Spellpower
        40133 -- Purified Dreadstone
    },
    ["Off hand"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Off hand"],
    ["Ranged"] = {
        40155 -- Reckless Ametrine
    }
}

BisTooltip_Enhancements["Mage"]["Arcane"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40155, -- Reckless Ametrine
        40133 -- Purified Dreadstone
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40133, -- Purified Dreadstone
        40155 -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Arcane"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- -- Fire (Mage)
BisTooltip_Enhancements["Mage"]["Fire"] = {}
BisTooltip_Enhancements["Mage"]["Fire"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40014 -- Rigid Autumn's Glow
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        39998, -- Runed Scarlet Ruby
        40014 -- Rigid Autumn's Glow
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39998, -- Runed Scarlet Ruby
        40014 -- Rigid Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = {
        -60623, -- Boots - Icewalker
        40099 -- Shining Forest Emerald
    },
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40049 -- Veiled Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = {
        40051 -- Reckless Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40051 -- Reckless Monarch Topaz
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40026 -- Purified Twilight Opal
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = {
        40051 -- Reckless Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = {
        40153 -- Veiled Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40133, -- Purified Dreadstone
        40155, -- Reckless Ametrine
        40113 -- Runed Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = {
        40133 -- Purified Dreadstone
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = {
        -60714, -- Weapon - Mighty Spellpower
        40155 -- Reckless Ametrine
    },
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = {
        40133 -- Purified Dreadstone
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40152 -- Potent Ametrine
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40152 -- Potent Ametrine
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40113, -- Runed Cardinal Ruby
        40133, -- Purified Dreadstone
        40152 -- Potent Ametrine
    },
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40152 -- Potent Ametrine
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40133 -- Purified Dreadstone
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40133, -- Purified Dreadstone
        40152 -- Potent Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = {
        40152 -- Potent Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = {
        40152 -- Potent Ametrine
    }
}

BisTooltip_Enhancements["Mage"]["Fire"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40113, -- Runed Cardinal Ruby
        40133, -- Purified Dreadstone
        40155 -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Ranged"]
}

-- -- Fire FFB (Mage)
BisTooltip_Enhancements["Mage"]["Fire FFB"] = {}
BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40026 -- Purified Twilight Opal
    },
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
         -60692, -- Chest - Powerful Stats
         39998, -- Runed Scarlet Ruby
         40051 -- Reckless Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        40051, -- Reckless Monarch Topaz
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        39998, -- Runed Scarlet Ruby
        40051 -- Reckless Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = {
        40049 -- Veiled Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = {
        40049, -- Veiled Monarch Topaz
        40049, -- Veiled Monarch Topaz
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40153 -- Veiled Ametrine
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40133, -- Purified Dreadstone
        40153 -- Veiled Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = {
        40153 -- Veiled Ametrine
    }
}

-- -- Frost (Mage)
BisTooltip_Enhancements["Mage"]["Frost"] = {}
BisTooltip_Enhancements["Mage"]["Frost"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Mage"]["Frost"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Ranged"]
}

-- Paladin
BisTooltip_Enhancements["Paladin"] = BisTooltip_Enhancements["Paladin"] or {}

-- -- Holy (Paladin)
BisTooltip_Enhancements["Paladin"]["Holy"] = {}
BisTooltip_Enhancements["Paladin"]["Holy"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        42702 -- Enchanted Tear
    },
    ["Shoulder"] = {
        -59937 -- Greater Inscription of the Storm
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40012, -- Brilliant Autumn's Glow
        40012 -- Brilliant Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40012 -- Brilliant Autumn's Glow
    },
    ["Waist"] = {
        40012, -- Brilliant Autumn's Glow
        40012 -- Brilliant Autumn's Glow
    },
    ["Legs"] = {
        -55634, -- Sapphire Spellthread
        40012, -- Brilliant Autumn's Glow
        40012 -- Brilliant Autumn's Glow
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40012 -- Brilliant Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        -60653 -- Shield - Greater Intellect
    }
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T7"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40012 -- Brilliant Autumn's Glow
    },
    ["Neck"] = {
        40012 -- Brilliant Autumn's Glow
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40012 -- Brilliant Autumn's Glow
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40094 -- Dazzling Forest Emerald
    },
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Chest"],
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40012 -- Brilliant Autumn's Glow
    },
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Hands"],
    ["Waist"] = {
        40012 -- Brilliant Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40047 -- Luminous Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T8"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40094 -- Dazzling Forest Emerald
    },
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T7"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40012 -- Brilliant Autumn's Glow
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40012, -- Brilliant Autumn's Glow
        40012, -- Brilliant Autumn's Glow
        40012 -- Brilliant Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T7"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40047 -- Luminous Monarch Topaz
    },
    ["Waist"] = {
        40012, -- Brilliant Autumn's Glow
        40012, -- Brilliant Autumn's Glow
        40012 -- Brilliant Autumn's Glow
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40012, -- Brilliant Autumn's Glow
        40012 -- Brilliant Autumn's Glow
    },
    ["Finger 1"] = {
        40012 -- Brilliant Autumn's Glow
    },
    ["Finger 2"] = {
        40012 -- Brilliant Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        -60653, -- Shield - Greater Intellect
        40012 -- Brilliant Autumn's Glow
    }
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T9"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40175 -- Dazzling Eye of Zul
    },
    ["Neck"] = {
        40123 -- Brilliant King's Amber
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40123 -- Brilliant King's Amber
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40151 -- Luminous Ametrine
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40123, -- Brilliant King's Amber
        40123, -- Brilliant King's Amber
        40123 -- Brilliant King's Amber
    },
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40123 -- Brilliant King's Amber
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40123, -- Brilliant King's Amber
        40123 -- Brilliant King's Amber
    },
    ["Waist"] = {
        40123, -- Brilliant King's Amber
        40123 -- Brilliant King's Amber
    },
    ["Legs"] = {
        -55634, -- Sapphire Spellthread
        40123, -- Brilliant King's Amber
        40123, -- Brilliant King's Amber
        40123 -- Brilliant King's Amber
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40123, -- Brilliant King's Amber
        40123 -- Brilliant King's Amber
    },
    ["Finger 1"] = {
        40123 -- Brilliant King's Amber
    },
    ["Finger 2"] = {
        40123 -- Brilliant King's Amber
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        -60653, -- Shield - Greater Intellect
        40123 -- Brilliant King's Amber
    }
}

BisTooltip_Enhancements["Paladin"]["Holy"]["T10"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40151 -- Luminous Ametrine
    },
    ["Neck"] = {
        40175 -- Dazzling Eye of Zul
    },
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40123 -- Brilliant King's Amber
    },
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Hands"],
    ["Waist"] = {
        40123, -- Brilliant King's Amber
        40123, -- Brilliant King's Amber
        40123 -- Brilliant King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Off hand"]
}

BisTooltip_Enhancements["Paladin"]["Holy"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Hands"],
    ["Waist"] = {
        40123, -- Brilliant King's Amber
        40151, -- Luminous Ametrine
        40123 -- Brilliant King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40123, -- Brilliant King's Amber
        40151 -- Luminous Ametrine
    },
    ["Finger 1"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T9"]["Off hand"]
}

-- -- Protection (Paladin)
BisTooltip_Enhancements["Paladin"]["Protection"] = {}
BisTooltip_Enhancements["Paladin"]["Protection"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40089 -- Enduring Forest Emerald
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Legs"],
    ["Feet"] = {
        -44528 -- Boots - Greater Fortitude
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Finger 1"],
    ["Weapon"] = {
        -59619 -- Weapon - Accuracy
    },
    ["Off hand"] = {
        -62201 -- Titanium Plating
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Neck"] = {
        40022 -- Sovereign Twilight Opal
    },
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40088 -- Vivid Forest Emerald
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T8"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40088 -- Vivid Forest Emerald
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        -44769, -- Glove Reinforcements
        40022, -- Sovereign Twilight Opal
        40088 -- Vivid Forest Emerald
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Legs"],
    ["Feet"] = {
        -44528, -- Boots - Greater Fortitude
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Finger 1"],
    ["Weapon"] = {
        -59619, -- Weapon - Accuracy
        40008 -- Solid Sky Sapphire
    },
    ["Off hand"] = {
        -62201, -- Titanium Plating
        40008 -- Solid Sky Sapphire
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Head"],
    ["Neck"] = {
        40129 -- Sovereign Dreadstone
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40129, -- Sovereign Dreadstone
        40166, -- Vivid Eye of Zul
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        -62256, -- Bracer - Major Stamina
        40129 -- Sovereign Dreadstone
    },
    ["Hands"] = {
        -44769, -- Glove Reinforcements
        40166 -- Vivid Eye of Zul
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Waist"],
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40129, -- Sovereign Dreadstone
        40119 -- Solid Majestic Zircon
    },
    ["Feet"] = {
        -44528, -- Boots - Greater Fortitude
        40129, -- Sovereign Dreadstone
        40119 -- Solid Majestic Zircon
    },
    ["Finger 1"] = {
        40166 -- Vivid Eye of Zul
    },
    ["Finger 2"] = {
        40129 -- Sovereign Dreadstone
    },
    ["Weapon"] = {
        -59619, -- Weapon - Accuracy
        40119 -- Solid Majestic Zircon
    },
    ["Off hand"] = {
        -62201, -- Titanium Plating
        40166 -- Vivid Eye of Zul
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Neck"],
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        49110, -- Nightmare Tear
        40119 -- Solid Majestic Zircon
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40129, -- Sovereign Dreadstone
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["RS"]["Legs"],
    ["Feet"] = {
        -44528, -- Boots - Greater Fortitude
        40166, -- Vivid Eye of Zul
        40119 -- Solid Majestic Zircon
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = {
        -62201, -- Titanium Plating
        40129 -- Sovereign Dreadstone
    }
}

BisTooltip_Enhancements["Paladin"]["Protection"]["RS"] = {
    ["Head"] = {
        -59955, -- Arcanum of the Stalwart Protector
        41380, -- Austere Earthsiege Diamond
        40141 -- Guardian's Dreadstone
    },
    ["Neck"] = {
        40141 -- Guardian's Dreadstone
    },
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40166, -- Vivid Eye of Zul
        40119 -- Solid Majestic Zircon
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40141, -- Guardian's Dreadstone
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Hands"],
    ["Waist"] = {
        40141, -- Guardian's Dreadstone
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["RS"]["Legs"],
    ["Feet"] = {
        -44528, -- Boots - Greater Fortitude
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        40141 -- Guardian's Dreadstone
    },
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = {
        -62201, -- Titanium Plating
        40141 -- Guardian's Dreadstone
    }
}

-- -- Retribution (Paladin)
BisTooltip_Enhancements["Paladin"]["Retribution"] = {}
BisTooltip_Enhancements["Paladin"]["Retribution"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        42702, -- Enchanted Tear
        39996 -- Bold Scarlet Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39996, -- Bold Scarlet Ruby
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        39996, -- Bold Scarlet Ruby
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        39996, -- Bold Scarlet Ruby
        39996 -- Bold Scarlet Ruby
    }
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40143 -- Etched Ametrine
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40143 -- Etched Ametrine
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40111, -- Bold Cardinal Ruby
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40111, -- Bold Cardinal Ruby
        49110 -- Nightmare Tear
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40142 -- Inscribed Ametrine
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40142, -- Inscribed Ametrine
        40111 -- Bold Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40111, -- Bold Cardinal Ruby
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    }
}

BisTooltip_Enhancements["Paladin"]["Retribution"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = {
        40142 -- Inscribed Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Weapon"]
}

-- Priest
BisTooltip_Enhancements["Priest"] = BisTooltip_Enhancements["Priest"] or {}

-- -- Discipline (Priest)
BisTooltip_Enhancements["Priest"]["Discipline"] = {}
BisTooltip_Enhancements["Priest"]["Discipline"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Head"],
    ["Shoulder"] = {
        -59936, -- Greater Inscription of the Crag
        40051 -- Reckless Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39998, -- Runed Scarlet Ruby
        40027 -- Royal Twilight Opal
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Head"],
    ["Neck"] = {
        40047 -- Luminous Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39998 -- Runed Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        40027, -- Royal Twilight Opal
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Head"],
    ["Neck"] = {
        40027 -- Royal Twilight Opal
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Paladin"]["Holy"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40012, -- Brilliant Autumn's Glow
        40012 -- Brilliant Autumn's Glow
    },
    ["Waist"] = {
        40012, -- Brilliant Autumn's Glow
        40012, -- Brilliant Autumn's Glow
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Head"],
    ["Neck"] = {
        40151 -- Luminous Ametrine
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40134 -- Royal Dreadstone
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40113, -- Runed Cardinal Ruby
        40151 -- Luminous Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        40151, -- Luminous Ametrine
        40151, -- Luminous Ametrine
        40113 -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = {
        40151 -- Luminous Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = {
        40151 -- Luminous Ametrine
    }
}

BisTooltip_Enhancements["Priest"]["Discipline"]["T10"] = {
    ["Head"] = {
        -59960, -- Arcanum of Blissful Mending
        41401, -- Insightful Earthsiege Diamond
        40134 -- Royal Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Neck"],
    ["Shoulder"] = {
        -59936, -- Greater Inscription of the Crag
        40151 -- Luminous Ametrine
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        40151, -- Luminous Ametrine
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Discipline"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

-- -- Holy (Priest)
BisTooltip_Enhancements["Priest"]["Holy"] = {}
BisTooltip_Enhancements["Priest"]["Holy"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40047 -- Luminous Monarch Topaz
    },
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = {
        40047, -- Luminous Monarch Topaz
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T7"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        39998 -- Runed Scarlet Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40026, -- Purified Twilight Opal
        39998 -- Runed Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40026, -- Purified Twilight Opal
        40047 -- Luminous Monarch Topaz
    },
    ["Waist"] = {
        40047, -- Luminous Monarch Topaz
        40047, -- Luminous Monarch Topaz
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998, -- Runed Scarlet Ruby
        40047 -- Luminous Monarch Topaz
    },
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = {
        40047 -- Luminous Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T9"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40133 -- Purified Dreadstone
    },
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40151 -- Luminous Ametrine
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40133, -- Purified Dreadstone
        40113, -- Runed Cardinal Ruby
        40151 -- Luminous Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40151 -- Luminous Ametrine
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        40151 -- Luminous Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40133 -- Purified Dreadstone
    },
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40133, -- Purified Dreadstone
        40151 -- Luminous Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Holy"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Priest"]["Holy"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Priest"]["Holy"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Priest"]["Holy"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Discipline"]["T9"]["Ranged"]
}

-- -- Shadow (Priest)
BisTooltip_Enhancements["Priest"]["Shadow"] = {}
BisTooltip_Enhancements["Priest"]["Shadow"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40051 -- Reckless Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Priest"]["Shadow"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40049 -- Veiled Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = {
        -60714, -- Weapon - Mighty Spellpower
        40026 -- Purified Twilight Opal
    },
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = {
        40113 -- Runed Cardinal Ruby
    }
}

BisTooltip_Enhancements["Priest"]["Shadow"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Priest"]["Shadow"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- Rogue
BisTooltip_Enhancements["Rogue"] = BisTooltip_Enhancements["Rogue"] or {}

-- -- Assassination (Rogue)
BisTooltip_Enhancements["Rogue"]["Assassination"] = {}
BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40003 -- Precise Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39999, -- Bright Scarlet Ruby
        39999 -- Bright Scarlet Ruby
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40003 -- Precise Scarlet Ruby
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40014 -- Rigid Autumn's Glow
    },
    ["Waist"] = {
        40014, -- Rigid Autumn's Glow
        39999 -- Bright Scarlet Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40003 -- Precise Scarlet Ruby
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = {
        -59621 -- Weapon - Berserking
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = {
        39999 -- Bright Scarlet Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        39999 -- Bright Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40003 -- Precise Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Hands"],
    ["Waist"] = {
        39999 -- Bright Scarlet Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        39999, -- Bright Scarlet Ruby
        39999 -- Bright Scarlet Ruby
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40014 -- Rigid Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40003 -- Precise Scarlet Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40003, -- Precise Scarlet Ruby
        40003 -- Precise Scarlet Ruby
    },
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40052 -- Wicked Monarch Topaz
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40052, -- Wicked Monarch Topaz
        42702, -- Enchanted Tear
        39999 -- Bright Scarlet Ruby
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40052 -- Wicked Monarch Topaz
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        39999 -- Bright Scarlet Ruby
    },
    ["Waist"] = {
        39999, -- Bright Scarlet Ruby
        39999, -- Bright Scarlet Ruby
        39999 -- Bright Scarlet Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        39999, -- Bright Scarlet Ruby
        39999, -- Bright Scarlet Ruby
        39999 -- Bright Scarlet Ruby
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        39999, -- Bright Scarlet Ruby
        39999 -- Bright Scarlet Ruby
    },
    ["Finger 1"] = {
        39999 -- Bright Scarlet Ruby
    },
    ["Finger 2"] = {
        39999 -- Bright Scarlet Ruby
    },
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        39999 -- Bright Scarlet Ruby
    },
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        39999 -- Bright Scarlet Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = {
        40118 -- Precise Cardinal Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40118 -- Precise Cardinal Ruby
    },
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40118 -- Precise Cardinal Ruby
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40114, -- Bright Cardinal Ruby
        40114 -- Bright Cardinal Ruby
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40114, -- Bright Cardinal Ruby
        40114 -- Bright Cardinal Ruby
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40114 -- Bright Cardinal Ruby
    },
    ["Waist"] = {
        40156, -- Wicked Ametrine
        40114, -- Bright Cardinal Ruby
        40114 -- Bright Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40114, -- Bright Cardinal Ruby
        40114, -- Bright Cardinal Ruby
        40114 -- Bright Cardinal Ruby
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40156, -- Wicked Ametrine
        40114 -- Bright Cardinal Ruby
    },
    ["Finger 1"] = {
        40114 -- Bright Cardinal Ruby
    },
    ["Finger 2"] = {
        40114 -- Bright Cardinal Ruby
    },
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40156 -- Wicked Ametrine
    },
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40156 -- Wicked Ametrine
    },
    ["Ranged"] = {
        40156 -- Wicked Ametrine
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40114 -- Bright Cardinal Ruby
    },
    ["Neck"] = {
        40114 -- Bright Cardinal Ruby
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40114 -- Bright Cardinal Ruby
    },
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40159 -- Stark Ametrine
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40114, -- Bright Cardinal Ruby
        49110, -- Nightmare Tear
        40159 -- Stark Ametrine
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40159 -- Stark Ametrine
    },
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Hands"],
    ["Waist"] = {
        40114, -- Bright Cardinal Ruby
        40114, -- Bright Cardinal Ruby
        40114 -- Bright Cardinal Ruby
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40114, -- Bright Cardinal Ruby
        40159 -- Stark Ametrine
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40159, -- Stark Ametrine
        40159 -- Stark Ametrine
    },
    ["Finger 1"] = {
        40159 -- Stark Ametrine
    },
    ["Finger 2"] = {
        40159 -- Stark Ametrine
    },
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40159 -- Stark Ametrine
    },
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40114 -- Bright Cardinal Ruby
    },
    ["Ranged"] = {
        40114 -- Bright Cardinal Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Assassination"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Head"],
    ["Neck"] = {
        40125 -- Rigid King's Amber
    },
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Shoulder"],
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40125 -- Rigid King's Amber
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40114, -- Bright Cardinal Ruby
        49110, -- Nightmare Tear
        40125 -- Rigid King's Amber
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40114 -- Bright Cardinal Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Ranged"]
}

-- -- Combat (Rogue)
BisTooltip_Enhancements["Rogue"]["Combat"] = {}
BisTooltip_Enhancements["Rogue"]["Combat"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        39999 -- Bright Scarlet Ruby
    },
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39999 -- Bright Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Combat"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        39999, -- Bright Scarlet Ruby
        39999 -- Bright Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        39999, -- Bright Scarlet Ruby
        40052 -- Wicked Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40052 -- Wicked Monarch Topaz
    },
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Off hand"],
    ["Ranged"] = {
        39999 -- Bright Scarlet Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Shoulder"],
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40114 -- Bright Cardinal Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Feet"],
    ["Finger 1"] = {
        40156 -- Wicked Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Rogue"]["Combat"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40117, -- Fractured Cardinal Ruby
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Waist"] = {
        49110, -- Nightmare Tear
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40117 -- Fractured Cardinal Ruby
    },
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40117 -- Fractured Cardinal Ruby
    },
    ["Ranged"] = {
        40117 -- Fractured Cardinal Ruby
    }
}

BisTooltip_Enhancements["Rogue"]["Combat"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

-- Shaman
BisTooltip_Enhancements["Shaman"] = BisTooltip_Enhancements["Shaman"] or {}

-- -- Elemental (Shaman)
BisTooltip_Enhancements["Shaman"]["Elemental"] = {}
BisTooltip_Enhancements["Shaman"]["Elemental"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40027 -- Royal Twilight Opal
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40049 -- Veiled Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40051 -- Reckless Monarch Topaz
    },
    ["Finger 1"] = {
        40027 -- Royal Twilight Opal
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T7"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40100 -- Lambent Forest Emerald
    },
    ["Neck"] = {
        40100 -- Lambent Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40049 -- Veiled Monarch Topaz
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40027 -- Royal Twilight Opal
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998, -- Runed Scarlet Ruby
        40027 -- Royal Twilight Opal
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Weapon"],
    ["Off hand"] = {
        -60653, -- Shield - Greater Intellect
        39998 -- Runed Scarlet Ruby
    }
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40113, -- Runed Cardinal Ruby
        40134 -- Royal Dreadstone
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40134, -- Royal Dreadstone
        40155 -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        -60653, -- Shield - Greater Intellect
        40155 -- Reckless Ametrine
    }
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40134, -- Royal Dreadstone
        40113 -- Runed Cardinal Ruby
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        40113, -- Runed Cardinal Ruby
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Elemental"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T9"]["Off hand"]
}

-- -- Enhancement (Shaman)
BisTooltip_Enhancements["Shaman"]["Enhancement"] = {}
BisTooltip_Enhancements["Shaman"]["Enhancement"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        -59934 -- Greater Inscription of the Axe
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40017, -- Quick Autumn's Glow
        40017 -- Quick Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 1"] = {
        40014 -- Rigid Autumn's Glow
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        42702 -- Enchanted Tear
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        39999 -- Bright Scarlet Ruby
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40053, -- Pristine Monarch Topaz
        40014 -- Rigid Autumn's Glow
    },
    ["Feet"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T7"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = {
        40017 -- Quick Autumn's Glow
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40055 -- Stark Monarch Topaz
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40017 -- Quick Autumn's Glow
    },
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["PR"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40017 -- Quick Autumn's Glow
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40017 -- Quick Autumn's Glow
    },
    ["Waist"] = {
        40017, -- Quick Autumn's Glow
        40017, -- Quick Autumn's Glow
        40017 -- Quick Autumn's Glow
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40017, -- Quick Autumn's Glow
        40017 -- Quick Autumn's Glow
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40017, -- Quick Autumn's Glow
        40055 -- Stark Monarch Topaz
    },
    ["Finger 1"] = {
        40017 -- Quick Autumn's Glow
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40017 -- Quick Autumn's Glow
    },
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40055 -- Stark Monarch Topaz
    }
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40128 -- Quick King's Amber
    },
    ["Neck"] = {
        40159 -- Stark Ametrine
    },
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40128 -- Quick King's Amber
    },
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40159 -- Stark Ametrine
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40159, -- Stark Ametrine
        49110, -- Nightmare Tear
        40128 -- Quick King's Amber
    },
    ["Wrist"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T10"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40128 -- Quick King's Amber
    },
    ["Waist"] = {
        40128, -- Quick King's Amber
        40159, -- Stark Ametrine
        40128 -- Quick King's Amber
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40128, -- Quick King's Amber
        40128 -- Quick King's Amber
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40128, -- Quick King's Amber
        40128 -- Quick King's Amber
    },
    ["Finger 1"] = {
        40128 -- Quick King's Amber
    },
    ["Finger 2"] = {
        40128 -- Quick King's Amber
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40128 -- Quick King's Amber
    }
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40118 -- Precise Cardinal Ruby
    },
    ["Neck"] = {
        40128 -- Quick King's Amber
    },
    ["Shoulder"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["T9"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40128 -- Quick King's Amber
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40118, -- Precise Cardinal Ruby
        49110, -- Nightmare Tear
        40128 -- Quick King's Amber
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40128 -- Quick King's Amber
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40118 -- Precise Cardinal Ruby
    },
    ["Waist"] = {
        40128, -- Quick King's Amber
        40128, -- Quick King's Amber
        40128 -- Quick King's Amber
    },
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40118, -- Precise Cardinal Ruby
        40128 -- Quick King's Amber
    },
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40118 -- Precise Cardinal Ruby
    },
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40118 -- Precise Cardinal Ruby
    }
}

BisTooltip_Enhancements["Shaman"]["Enhancement"]["RS"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40162 -- Accurate Ametrine
    },
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40162 -- Accurate Ametrine
    },
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Hands"],
    ["Waist"] = {
        40128, -- Quick King's Amber
        40118, -- Precise Cardinal Ruby
        40128 -- Quick King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Off hand"]
}

-- -- Restoration (Shaman)
BisTooltip_Enhancements["Shaman"]["Restoration"] = {}
BisTooltip_Enhancements["Shaman"]["Restoration"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40105 -- Energized Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -44509, -- Chest - Greater Mana Restoration
        39998, -- Runed Scarlet Ruby
        40017 -- Quick Autumn's Glow
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = {
        40017, -- Quick Autumn's Glow
        39998 -- Runed Scarlet Ruby
    },
    ["Legs"] = {
        -55634 -- Sapphire Spellthread
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Priest"]["Holy"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40027 -- Royal Twilight Opal
    },
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = {
        -55634, -- Sapphire Spellthread
        39998, -- Runed Scarlet Ruby
        40027 -- Royal Twilight Opal
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Holy"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"]["Back"],
    ["Chest"] = {
        -44509, -- Chest - Greater Mana Restoration
        40017, -- Quick Autumn's Glow
        39998 -- Runed Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = {
        -55634, -- Sapphire Spellthread
        39998, -- Runed Scarlet Ruby
        40105 -- Energized Forest Emerald
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998, -- Runed Scarlet Ruby
        40105 -- Energized Forest Emerald
    },
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["T8"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40179 -- Energized Eye of Zul
    },
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = {
        -44509, -- Chest - Greater Mana Restoration
        40128, -- Quick King's Amber
        40128 -- Quick King's Amber
    },
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40128 -- Quick King's Amber
    },
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40128 -- Quick King's Amber
    },
    ["Waist"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Waist"],
    ["Legs"] = {
        -55634, -- Sapphire Spellthread
        40128, -- Quick King's Amber
        40128, -- Quick King's Amber
        40128 -- Quick King's Amber
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40128, -- Quick King's Amber
        40128 -- Quick King's Amber
    },
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = {
        -60653, -- Shield - Greater Intellect
        40128 -- Quick King's Amber
    }
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41401, -- Insightful Earthsiege Diamond
        40155 -- Reckless Ametrine
    },
    ["Neck"] = {
        40179 -- Energized Eye of Zul
    },
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        40128 -- Quick King's Amber
    },
    ["Back"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40128, -- Quick King's Amber
        40128 -- Quick King's Amber
    },
    ["Waist"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T10"]["Waist"],
    ["Legs"] = {
        -55634, -- Sapphire Spellthread
        40155, -- Reckless Ametrine
        40128 -- Quick King's Amber
    },
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Off hand"]
}

BisTooltip_Enhancements["Shaman"]["Restoration"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Wrist"],
    ["Hands"] = {
        -44592, -- Gloves - Exceptional Spellpower
        40128, -- Quick King's Amber
        40155 -- Reckless Ametrine
    },
    ["Waist"] = {
        40128, -- Quick King's Amber
        40155, -- Reckless Ametrine
        40128 -- Quick King's Amber
    },
    ["Legs"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Shaman"]["Enhancement"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Shaman"]["Restoration"]["T9"]["Off hand"]
}

-- Warlock
BisTooltip_Enhancements["Warlock"] = BisTooltip_Enhancements["Warlock"] or {}

-- -- Affliction (Warlock)
BisTooltip_Enhancements["Warlock"]["Affliction"] = {}
BisTooltip_Enhancements["Warlock"]["Affliction"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = {
        -59937, -- Greater Inscription of the Storm
        39998, -- Runed Scarlet Ruby
        40049 -- Veiled Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -33990 -- Chest - Major Spirit
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40049, -- Veiled Monarch Topaz
        40049 -- Veiled Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = {
        -33990, -- Chest - Major Spirit
        39998, -- Runed Scarlet Ruby
        40049 -- Veiled Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = {
        -33990, -- Chest - Major Spirit
        39998, -- Runed Scarlet Ruby
        40051 -- Reckless Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        39998, -- Runed Scarlet Ruby
        40049 -- Veiled Monarch Topaz
    },
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T8"]["Weapon"],
    ["Ranged"] = {
        40051 -- Reckless Monarch Topaz
    }
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -33990, -- Chest - Major Spirit
        40133, -- Purified Dreadstone
        40155, -- Reckless Ametrine
        40113 -- Runed Cardinal Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = {
        -33990, -- Chest - Major Spirit
        40113, -- Runed Cardinal Ruby
        40155 -- Reckless Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40133, -- Purified Dreadstone
        40155 -- Reckless Ametrine
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Affliction"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- -- Demonology (Warlock)
BisTooltip_Enhancements["Warlock"]["Demonology"] = {}
BisTooltip_Enhancements["Warlock"]["Demonology"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39998, -- Runed Scarlet Ruby
        40049 -- Veiled Monarch Topaz
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Shaman"]["Elemental"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40133, -- Purified Dreadstone
        40133 -- Purified Dreadstone
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Weapon"],
    ["Off hand"] = {
        40113 -- Runed Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40133, -- Purified Dreadstone
        40113, -- Runed Cardinal Ruby
        40153 -- Veiled Ametrine
    },
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = {
        40153, -- Veiled Ametrine
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        40113, -- Runed Cardinal Ruby
        40113 -- Runed Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = {
        40153 -- Veiled Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Demonology"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Ranged"]
}

-- -- Destruction (Warlock)
BisTooltip_Enhancements["Warlock"]["Destruction"] = {}
BisTooltip_Enhancements["Warlock"]["Destruction"]["PR"] = {
    ["Head"] = {
        -59970, -- Arcanum of Burning Mysteries
        41285, -- Chaotic Skyflare Diamond
        40099 -- Shining Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        40014, -- Rigid Autumn's Glow
        40014 -- Rigid Autumn's Glow
    },
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Feet"],
    ["Finger 1"] = {
        40099 -- Shining Forest Emerald
    },
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Head"],
    ["Neck"] = {
        40099 -- Shining Forest Emerald
    },
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = {
        -47898, -- Cloak - Greater Speed
        40099 -- Shining Forest Emerald
    },
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Restoration"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T8"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["T8"]["Waist"],
    ["Legs"] = {
        -55631, -- Brilliant Spellthread
        39998, -- Runed Scarlet Ruby
        39998, -- Runed Scarlet Ruby
        39998 -- Runed Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Fire"]["T8"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Priest"]["Shadow"]["T8"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Chest"],
    ["Wrist"] = {
        -60767, -- Bracer - Superior Spellpower
        40153 -- Veiled Ametrine
    },
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Demonology"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Restoration"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

BisTooltip_Enhancements["Warlock"]["Destruction"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Mage"]["Fire"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Mage"]["Fire FFB"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Balance"]["RS"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Mage"]["Fire"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warlock"]["Affliction"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Balance"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Balance"]["T10"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Mage"]["Arcane"]["T9"]["Ranged"]
}

-- Warrior
BisTooltip_Enhancements["Warrior"] = BisTooltip_Enhancements["Warrior"] or {}

-- -- Arms (Warrior)
BisTooltip_Enhancements["Warrior"]["Arms"] = {}
BisTooltip_Enhancements["Warrior"]["Arms"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40038 -- Etched Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = {
        40038 -- Etched Monarch Topaz
    },
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"]
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T7"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        39996 -- Bold Scarlet Ruby
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40037 -- Inscribed Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39996 -- Bold Scarlet Ruby
    },
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        42702, -- Enchanted Tear
        40037 -- Inscribed Monarch Topaz
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T8"] = {
    ["Head"] = {
        -59954, -- Arcanum of Torment
        41398, -- Relentless Earthsiege Diamond
        40038 -- Etched Monarch Topaz
    },
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        40038, -- Etched Monarch Topaz
        39996 -- Bold Scarlet Ruby
    },
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        39996, -- Bold Scarlet Ruby
        40037 -- Inscribed Monarch Topaz
    },
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40002, -- Fractured Scarlet Ruby
        40002 -- Fractured Scarlet Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40002, -- Fractured Scarlet Ruby
        40002, -- Fractured Scarlet Ruby
        40002 -- Fractured Scarlet Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        39996, -- Bold Scarlet Ruby
        42702 -- Enchanted Tear
    },
    ["Ranged"] = {
        39996 -- Bold Scarlet Ruby
    }
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T9"]["Weapon"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Arms"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["RS"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40125 -- Rigid King's Amber
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40125 -- Rigid King's Amber
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40111, -- Bold Cardinal Ruby
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Feet"] = {
        -60763, -- Boots - Greater Assault
        40125, -- Rigid King's Amber
        40125 -- Rigid King's Amber
    },
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = {
        -59621, -- Weapon - Berserking
        40117, -- Fractured Cardinal Ruby
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Arms"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["RS"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40143 -- Etched Ametrine
    },
    ["Hands"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Feet"],
    ["Finger 1"] = {
        40143 -- Etched Ametrine
    },
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Weapon"],
    ["Ranged"] = {
        40111 -- Bold Cardinal Ruby
    }
}

-- -- Fury (Warrior)
BisTooltip_Enhancements["Warrior"]["Fury"] = {}
BisTooltip_Enhancements["Warrior"]["Fury"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Shoulder"] = {
        -59934, -- Greater Inscription of the Axe
        39996, -- Bold Scarlet Ruby
        40038 -- Etched Monarch Topaz
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Warrior"]["Arms"]["PR"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T7"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Feet"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Rogue"]["Assassination"]["PR"]["Off hand"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T7"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T8"]["Back"],
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        39996, -- Bold Scarlet Ruby
        42702 -- Enchanted Tear
    },
    ["Wrist"] = {
        -44575, -- Bracer - Greater Assault
        40037 -- Inscribed Monarch Topaz
    },
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40037 -- Inscribed Monarch Topaz
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T8"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T8"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T7"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T8"]["Weapon"],
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40002, -- Fractured Scarlet Ruby
        40002 -- Fractured Scarlet Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T8"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["PR"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Hands"],
    ["Waist"] = {
        40142, -- Inscribed Ametrine
        40142, -- Inscribed Ametrine
        40111 -- Bold Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        40142 -- Inscribed Ametrine
    },
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T9"]["Weapon"],
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Arms"]["RS"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Hunter"]["Beast Mastery"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Warrior"]["Arms"]["RS"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40125, -- Rigid King's Amber
        40117 -- Fractured Cardinal Ruby
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Waist"],
    ["Legs"] = {
        -60582, -- Icescale Leg Armor
        40125, -- Rigid King's Amber
        49110 -- Nightmare Tear
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["T10"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T10"]["Weapon"],
    ["Off hand"] = {
        -59621, -- Weapon - Berserking
        40117, -- Fractured Cardinal Ruby
        40117, -- Fractured Cardinal Ruby
        40117 -- Fractured Cardinal Ruby
    },
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Fury"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Unholy"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Retribution"]["T10"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Wrist"],
    ["Hands"] = {
        -60668, -- Gloves - Crusher
        40143, -- Etched Ametrine
        40111 -- Bold Cardinal Ruby
    },
    ["Waist"] = {
        40143, -- Etched Ametrine
        40111, -- Bold Cardinal Ruby
        40111 -- Bold Cardinal Ruby
    },
    ["Legs"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T9"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["RS"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Death Knight"]["Frost"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Warrior"]["Arms"]["T10"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Warrior"]["Fury"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Rogue"]["Combat"]["T10"]["Ranged"]
}

-- -- Protection (Warrior)
BisTooltip_Enhancements["Warrior"]["Protection"] = {}
BisTooltip_Enhancements["Warrior"]["Protection"]["PR"] = {
    ["Head"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Head"],
    ["Shoulder"] = {
        -62384, -- Greater Inscription of the Gladiator
        40008, -- Solid Sky Sapphire
        40008 -- Solid Sky Sapphire
    },
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40034 -- Guardian's Twilight Opal
    },
    ["Waist"] = {
        40089 -- Enduring Forest Emerald
    },
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40034 -- Guardian's Twilight Opal
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Off hand"],
    ["Ranged"] = {
        40008 -- Solid Sky Sapphire
    }
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T7"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T8"]["Head"],
    ["Shoulder"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Druid"]["Feral DPS"]["PR"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40023 -- Shifting Twilight Opal
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T7"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Feet"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["PR"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Protection"]["PR"]["Ranged"]
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T8"] = {
    ["Head"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T8"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Shoulder"],
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40023 -- Shifting Twilight Opal
    },
    ["Chest"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T7"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["PR"]["Wrist"],
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40023, -- Shifting Twilight Opal
        40088 -- Vivid Forest Emerald
    },
    ["Waist"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Waist"],
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40023, -- Shifting Twilight Opal
        40008, -- Solid Sky Sapphire
        40088 -- Vivid Forest Emerald
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T8"]["Finger 1"],
    ["Weapon"] = {
        -59619, -- Weapon - Accuracy
        40023 -- Shifting Twilight Opal
    },
    ["Off hand"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T8"]["Off hand"]
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T9"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Shoulder"],
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40119 -- Solid Majestic Zircon
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40130, -- Shifting Dreadstone
        40166, -- Vivid Eye of Zul
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        -62256, -- Bracer - Major Stamina
        40130 -- Shifting Dreadstone
    },
    ["Hands"] = {
        -44529, -- Gloves - Major Agility
        40166 -- Vivid Eye of Zul
    },
    ["Waist"] = {
        40130, -- Shifting Dreadstone
        40119, -- Solid Majestic Zircon
        40119 -- Solid Majestic Zircon
    },
    ["Legs"] = {
        -60581, -- Frosthide Leg Armor
        40130, -- Shifting Dreadstone
        40119 -- Solid Majestic Zircon
    },
    ["Feet"] = {
        -47901, -- Boots - Tuskarr's Vitality
        40130, -- Shifting Dreadstone
        40119 -- Solid Majestic Zircon
    },
    ["Finger 1"] = {
        40130 -- Shifting Dreadstone
    },
    ["Finger 2"] = {
        40166 -- Vivid Eye of Zul
    },
    ["Weapon"] = {
        -59619, -- Weapon - Accuracy
        40166 -- Vivid Eye of Zul
    },
    ["Off hand"] = {
        -62201, -- Titanium Plating
        40119 -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Warrior"]["Protection"]["T10"] = {
    ["Head"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T10"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Druid"]["Feral Tank"]["T9"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Shoulder"],
    ["Back"] = {
        -60663, -- Cloak - Major Agility
        40166 -- Vivid Eye of Zul
    },
    ["Chest"] = {
        -60692, -- Chest - Powerful Stats
        40130, -- Shifting Dreadstone
        40119 -- Solid Majestic Zircon
    },
    ["Wrist"] = {
        -62256, -- Bracer - Major Stamina
        40166 -- Vivid Eye of Zul
    },
    ["Hands"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Waist"],
    ["Legs"] = {
        40166, -- Vivid Eye of Zul
        40119 -- Solid Majestic Zircon
    },
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T10"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Finger 1"],
    ["Finger 2"] = {
        40130 -- Shifting Dreadstone
    },
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = {
        -62201, -- Titanium Plating
        40130 -- Shifting Dreadstone
    },
    ["Ranged"] = {
        40119 -- Solid Majestic Zircon
    }
}

BisTooltip_Enhancements["Warrior"]["Protection"]["RS"] = {
    ["Head"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Head"],
    ["Neck"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Neck"],
    ["Shoulder"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Shoulder"],
    ["Back"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Back"],
    ["Chest"] = BisTooltip_Enhancements["Paladin"]["Protection"]["RS"]["Chest"],
    ["Wrist"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Wrist"],
    ["Hands"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Hands"],
    ["Waist"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T9"]["Waist"],
    ["Legs"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Legs"],
    ["Feet"] = BisTooltip_Enhancements["Death Knight"]["Blood Tank"]["T9"]["Feet"],
    ["Finger 1"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Finger 1"],
    ["Finger 2"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Finger 2"],
    ["Weapon"] = BisTooltip_Enhancements["Paladin"]["Protection"]["T9"]["Weapon"],
    ["Off hand"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Off hand"],
    ["Ranged"] = BisTooltip_Enhancements["Warrior"]["Protection"]["T10"]["Ranged"]
}