name = "Wortox Stats Tweak"
description = [[Change Wortox's stats and soul settings with free-form numbers.

Text fields need the client mod "Configs Extended" (workshop-3317960157) when you open Configure Mod. Joiners do not need it. Without it, only the default value shows as a single option; you can still set values in modoverrides.lua.

Invalid / out-of-range values are clamped or fall back to vanilla (see server log).
Day/night/hat sanity use flat per-minute rates (negatives OK). Food and items use multipliers (-10.00-10.00).
Re-enter settings after updating from older index-based versions.]]
author = "Isaac, Igor Howker"
version = "2.3.4"

client_only_mod = false
all_clients_require_mod = false
server_only_mod = true
dst_compatible = true

restart_require = false

api_version = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- Configs Extended (optional): enables typing in Configure Mod.
-- Not a hard mod_dependencies entry: CE is client-only; this mod is server-only.
-- Author Remi allows other mods to use is_text_config / section_start / etc.

local section_counter = 0
local function AddSection(label, hover)
    section_counter = section_counter + 1
    return {
        section_start = true,
        name = "SECTION_" .. section_counter,
        label = label,
        hover = hover or "",
        options = {{description = "", data = ""}},
        default = "",
    }
end

-- Free-form number via Configs Extended text input. data/default are strings;
-- modmain validates, rounds, and clamps. modinfo sandbox has no tostring.
-- Optional fields use default "vanilla" (never ""). An empty option description
-- makes DST treat the row as a header, so Configs Extended cannot open text input.
local function TextNumber(name, label, hover, default)
    local s = default == nil and "vanilla" or ("" .. default)
    if s == "" then
        s = "vanilla"
    end
    return {
        name = name,
        label = label,
        hover = hover,
        options = {{description = s, data = s}},
        default = s,
        is_text_config = true,
    }
end

configuration_options =
{
    AddSection("Combat"),
    TextNumber(
        "DamageMult",
        "Damage multiplier",
        "Damage dealt mult. Range -10.00-10.00. Vanilla 1.",
        1
    ),
    TextNumber(
        "DamageAbsorption",
        "Damage resistance",
        "Absorption fraction (0.25 or 25 OK). Range -1.00-1.00. Vanilla 0.",
        0
    ),

    AddSection("Base Stats"),
    TextNumber(
        "Health",
        "Max health",
        "Max health. Range 1-200. Vanilla 200.",
        200
    ),
    TextNumber(
        "Sanity",
        "Max sanity",
        "Max sanity. Range 1-200. Vanilla 150.",
        150
    ),
    TextNumber(
        "Hunger",
        "Max hunger",
        "Max hunger. Range 1-200. Vanilla 175.",
        175
    ),
    TextNumber(
        "SanityAura",
        "Sanity aura mult",
        "Monster sanity aura mult. Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
    TextNumber(
        "DaySanityPerMin",
        "Day sanity / min",
        "Day sanity per FULL minute (e.g. -50 is strong). Negatives drain. Range -200.0-200.0. Vanilla 0.",
        0
    ),
    TextNumber(
        "NightSanityPerMin",
        "Night sanity / min",
        "Night/caves sanity per FULL minute (replaces vanilla darkness). e.g. -50. Or type vanilla. Range -200.0-200.0.",
        "vanilla"
    ),
    TextNumber(
        "ItemSanityMult",
        "Item sanity mult",
        "Equipped item sanity mult. Range -10.00-10.00. Vanilla 1.",
        1
    ),

    AddSection("Misc"),
    TextNumber(
        "TopHatSanityPerMin",
        "Top Hat sanity / min",
        "Top Hat sanity/min (negatives OK). Or type vanilla (~3.3). Range -200.0-200.0. Ignores Item mult.",
        "vanilla"
    ),
    TextNumber(
        "MagicianTopHatSanityPerMin",
        "Magician Top Hat / min",
        "Magician Top Hat sanity/min (negatives OK). Or type vanilla (~3.3). Range -200.0-200.0. Ignores Item mult.",
        "vanilla"
    ),
    TextNumber(
        "WalrusHatSanityPerMin",
        "Tam o' Shanter / min",
        "Tam o' Shanter sanity/min (negatives OK). Or type vanilla (~6.7). Range -200.0-200.0. Ignores Item mult.",
        "vanilla"
    ),

    AddSection("Soul Mechanics"),
    TextNumber(
        "SoulhealRange",
        "Soul heal range",
        "Soul heal range. Range 0-200. Vanilla 8.",
        8
    ),
    TextNumber(
        "SoulstealRange",
        "Soul steal range",
        "Soul fly-to range. Range 0-200. Vanilla 8.",
        8
    ),
    TextNumber(
        "ExtractRange",
        "Soul extract range",
        "Soul drop range. Range 0-200. Vanilla 20.",
        20
    ),
    TextNumber(
        "maxsouls",
        "Max souls",
        "Max souls before overload. Range 0-200. Vanilla 20.",
        20
    ),
    TextNumber(
        "Soulheal",
        "Soul heal amount",
        "Health from soul heal. Range 0-200. Vanilla 20.",
        20
    ),

    AddSection("Soul Eating - Nice"),
    TextNumber(
        "NiceSoulHunger",
        "Hunger upon eating soul",
        "Nice eat-soul hunger. Range -200.0-200.0. Vanilla 25.",
        25
    ),
    TextNumber(
        "NiceSoulSanity",
        "Sanity upon eating soul",
        "Nice eat-soul sanity. Range -200.0-200.0. Vanilla -10.",
        -10
    ),
    TextNumber(
        "NiceSoulHealth",
        "Heal upon eating soul",
        "Nice eat-soul health. Range -200.0-200.0. Vanilla 0.",
        0
    ),

    AddSection("Soul Eating - Naughty"),
    TextNumber(
        "NaughtySoulHunger",
        "Hunger upon eating soul",
        "Naughty eat-soul hunger. Range -200.0-200.0. Vanilla 25.",
        25
    ),
    TextNumber(
        "NaughtySoulSanity",
        "Sanity upon eating soul",
        "Naughty eat-soul sanity. Range -200.0-200.0. Vanilla 0.",
        0
    ),
    TextNumber(
        "NaughtySoulHealth",
        "Heal upon eating soul",
        "Naughty eat-soul health. Range -200.0-200.0. Vanilla 0.",
        0
    ),

    AddSection("Soul Eating - Neutral"),
    TextNumber(
        "NeutralSoulHunger",
        "Hunger upon eating soul",
        "Neutral eat-soul hunger. Range -200.0-200.0. Vanilla 25.",
        25
    ),
    TextNumber(
        "NeutralSoulSanity",
        "Sanity upon eating soul",
        "Neutral eat-soul sanity. Range -200.0-200.0. Vanilla -5.",
        -5
    ),
    TextNumber(
        "NeutralSoulHealth",
        "Heal upon eating soul",
        "Neutral eat-soul health. Range -200.0-200.0. Vanilla 0.",
        0
    ),

    AddSection("Food - Nice"),
    TextNumber(
        "NiceFoodHungerMult",
        "Hunger from food",
        "Food hunger mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
    TextNumber(
        "NiceFoodHealthMult",
        "Health from food",
        "Food health mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
    TextNumber(
        "NiceFoodSanityMult",
        "Sanity from food",
        "Food sanity mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),

    AddSection("Food - Naughty"),
    TextNumber(
        "NaughtyFoodHungerMult",
        "Hunger from food",
        "Food hunger mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
    TextNumber(
        "NaughtyFoodHealthMult",
        "Health from food",
        "Food health mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
    TextNumber(
        "NaughtyFoodSanityMult",
        "Sanity from food",
        "Food sanity mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),

    AddSection("Food - Neutral"),
    TextNumber(
        "NeutralFoodHungerMult",
        "Hunger from food",
        "Food hunger mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
    TextNumber(
        "NeutralFoodHealthMult",
        "Health from food",
        "Food health mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
    TextNumber(
        "NeutralFoodSanityMult",
        "Sanity from food",
        "Food sanity mult (not souls). Range -10.00-10.00. Vanilla 0.5.",
        0.5
    ),
}
