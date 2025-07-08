Config = {}

-- Loot props and payout ranges
Config.LootProps = {
    ["prop_cs_heist_bag_02"]  = { label = "Duffle Bag",         item = "old_laptop" },
    ["prop_ld_suitcase_01"]   = { label = "Suitcase",           item = "confidential_docs" },
    ["prop_box_wood03a"]      = { label = "Wood Crate",         item = "luxury_perfume" },
    ["prop_money_bag_01"]     = { label = "Money Bag",          item = "goldbar" },
    ["prop_security_case_01"] = { label = "Security Case",      item = "spy_camera" },
    ["prop_ld_int_safe_01"]   = { label = "Safe Box",           item = "collector_coin" },
    ["prop_toolchest_05"]     = { label = "Tool Chest",         item = "pocketknife" },
    ["w_am_case"]             = { label = "Suspicious Package", item = "usb_stick" },
    ["prop_cigar_box_02"]     = { label = "Luxury Cigar Box",   item = "cigarette_pack" }
}

-- Configurable spawn zones
Config.Zones = {
    ["grove"] = {
        label = "Grove Street",
        locations = {
            vector3(85.19, -1958.41, 21.12),
            vector3(125.59, -1929.6, 21.38),
            vector3(100.02, -1913.12, 21.03),
            vector3(56.61, -1922.42, 21.91),
            vector3(-4.76, -1870.83, 24.15),
            vector3(-32.75, -1847.06, 26.19),
            vector3(-42.11, -1792.37, 27.83),
            vector3(20.17, -1844.7, 24.6),
            vector3(45.93, -1864.39, 23.28)
        }
    },
    ["mirrorpark"] = {
        label = "Mirror Park",
        locations = {
            vector3(1220.56, -687.82, 60.79),
            vector3(1265.66, -648.0, 67.92),
            vector3(1242.26, -565.82, 69.66),
            vector3(1260.56, -479.9, 70.19),
            vector3(1327.88, -535.8, 72.44),
            vector3(1399.48, -572.05, 74.34),
            vector3(1313.45, -588.82, 72.93),
            vector3(1203.35, -599.32, 68.06),
            vector3(1087.71, -483.98, 65.17),
            vector3(1056.35, -448.24, 66.26),
            vector3(1011.21, -417.58, 64.95),
            vector3(879.51, -498.66, 57.88),
            vector3(923.5, -560.37, 58.0),
            vector3(975.94, -580.24, 59.64),
            vector3(1005.95, -511.25, 60.83),
            vector3(979.29, -627.22, 59.24),
            vector3(997.2, -729.39, 57.82)
        }
    },
    ["vespucci"] = {
        label = "Vespucci Beach",
        locations = {
            vector3(-1102.04, -1493.88, 4.9),
            vector3(-1087.12, -1529.89, 4.69),
            vector3(-1113.81, -1578.76, 8.68),
            vector3(-1056.44, -1587.89, 4.62),
            vector3(-1032.56, -1583.06, 5.13),
            vector3(-1031.51, -1620.37, 5.02),
            vector3(-1060.06, -1657.31, 4.67),
            vector3(-1098.43, -1673.66, 8.39),
            vector3(-1141.83, -1462.58, 4.62),
            vector3(-1029.21, -1505.31, 4.9),
            vector3(-991.72, -1518.2, 4.9),
            vector3(-929.25, -1416.37, 7.69),
            vector3(-879.54, -1502.77, 5.18)

        }
    },
}

-- Chance the loot is fake (0.1 = 10%)
Config.FakeChance = 0.1

-- Auto-spawn interval in minutes
Config.AutoSpawnMinutes = 5