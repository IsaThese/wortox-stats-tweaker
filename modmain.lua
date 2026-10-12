local TUNING = GLOBAL.TUNING
STACK_SIZE_EXTRASMALLITEM = 60

if GetModConfigData("DamageMult") == 15 then
TUNING.WORTOX_DAMAGEMULT = 2.0
elseif GetModConfigData("DamageMult") == 14 then
TUNING.WORTOX_DAMAGEMULT = 1.9
elseif GetModConfigData("DamageMult") == 13 then
TUNING.WORTOX_DAMAGEMULT = 1.8
elseif GetModConfigData("DamageMult") == 12 then
TUNING.WORTOX_DAMAGEMULT = 1.7
elseif GetModConfigData("DamageMult") == 11 then
TUNING.WORTOX_DAMAGEMULT = 1.6
elseif GetModConfigData("DamageMult") == 10 then
TUNING.WORTOX_DAMAGEMULT = 1.5
elseif GetModConfigData("DamageMult") == 9 then
TUNING.WORTOX_DAMAGEMULT = 1.4
elseif GetModConfigData("DamageMult") == 8 then
TUNING.WORTOX_DAMAGEMULT = 1.3
elseif GetModConfigData("DamageMult") == 7 then
TUNING.WORTOX_DAMAGEMULT = 1.2
elseif GetModConfigData("DamageMult") == 6 then
TUNING.WORTOX_DAMAGEMULT = 1.1
elseif GetModConfigData("DamageMult") == 5 then
TUNING.WORTOX_DAMAGEMULT = 1.00
elseif GetModConfigData("DamageMult") == 4 then
TUNING.WORTOX_DAMAGEMULT = 0.9
elseif GetModConfigData("DamageMult") == 3 then
TUNING.WORTOX_DAMAGEMULT = 0.75
elseif GetModConfigData("DamageMult") == 2 then
TUNING.WORTOX_DAMAGEMULT = 0.5
elseif GetModConfigData("DamageMult") == 1 then
TUNING.WORTOX_DAMAGEMULT = 0.25
end

if GetModConfigData("DamageAbsorption") == 12 then
TUNING.WORTOX_ABSORPTION = 0.65
elseif GetModConfigData("DamageAbsorption") == 11 then
TUNING.WORTOX_ABSORPTION = 0.5
elseif GetModConfigData("DamageAbsorption") == 10 then
TUNING.WORTOX_ABSORPTION = 0.4
elseif GetModConfigData("DamageAbsorption") == 9 then
TUNING.WORTOX_ABSORPTION = 0.3
elseif GetModConfigData("DamageAbsorption") == 8 then
TUNING.WORTOX_ABSORPTION = 0.25
elseif GetModConfigData("DamageAbsorption") == 7 then
TUNING.WORTOX_ABSORPTION = 0.2
elseif GetModConfigData("DamageAbsorption") == 6 then
TUNING.WORTOX_ABSORPTION = 0.1
elseif GetModConfigData("DamageAbsorption") == 5 then
TUNING.WORTOX_ABSORPTION = 0
elseif GetModConfigData("DamageAbsorption") == 4 then
TUNING.WORTOX_ABSORPTION = -0.1
elseif GetModConfigData("DamageAbsorption") == 3 then
TUNING.WORTOX_ABSORPTION = -0.25
elseif GetModConfigData("DamageAbsorption") == 2 then
TUNING.WORTOX_ABSORPTION = -0.5
elseif GetModConfigData("DamageAbsorption") == 1 then
TUNING.WORTOX_ABSORPTION = -1.0
end

if GetModConfigData("SoulhealRange") == 12 then
TUNING.WORTOX_SOULHEAL_RANGE = 50
elseif GetModConfigData("SoulhealRange") == 11 then
TUNING.WORTOX_SOULHEAL_RANGE = 40
elseif GetModConfigData("SoulhealRange") == 10 then
TUNING.WORTOX_SOULHEAL_RANGE = 30
elseif GetModConfigData("SoulhealRange") == 9 then
TUNING.WORTOX_SOULHEAL_RANGE = 25
elseif GetModConfigData("SoulhealRange") == 8 then
TUNING.WORTOX_SOULHEAL_RANGE = 20
elseif GetModConfigData("SoulhealRange") == 7 then
TUNING.WORTOX_SOULHEAL_RANGE = 15
elseif GetModConfigData("SoulhealRange") == 6 then
TUNING.WORTOX_SOULHEAL_RANGE = 12
elseif GetModConfigData("SoulhealRange") == 5 then
TUNING.WORTOX_SOULHEAL_RANGE = 10
elseif GetModConfigData("SoulhealRange") == 4 then
TUNING.WORTOX_SOULHEAL_RANGE = 8
elseif GetModConfigData("SoulhealRange") == 3 then
TUNING.WORTOX_SOULHEAL_RANGE = 6
elseif GetModConfigData("SoulhealRange") == 2 then
TUNING.WORTOX_SOULHEAL_RANGE = 3
elseif GetModConfigData("SoulhealRange") == 1 then
TUNING.WORTOX_SOULHEAL_RANGE = 1
end

if GetModConfigData("SoulstealRange") == 12 then
TUNING.WORTOX_SOULSTEALER_RANGE = 50
elseif GetModConfigData("SoulstealRange") == 11 then
TUNING.WORTOX_SOULSTEALER_RANGE = 40
elseif GetModConfigData("SoulstealRange") == 10 then
TUNING.WORTOX_SOULSTEALER_RANGE = 30
elseif GetModConfigData("SoulstealRange") == 9 then
TUNING.WORTOX_SOULSTEALER_RANGE = 25
elseif GetModConfigData("SoulstealRange") == 8 then
TUNING.WORTOX_SOULSTEALER_RANGE = 20
elseif GetModConfigData("SoulstealRange") == 7 then
TUNING.WORTOX_SOULSTEALER_RANGE = 15
elseif GetModConfigData("SoulstealRange") == 6 then
TUNING.WORTOX_SOULSTEALER_RANGE = 12
elseif GetModConfigData("SoulstealRange") == 5 then
TUNING.WORTOX_SOULSTEALER_RANGE = 10
elseif GetModConfigData("SoulstealRange") == 4 then
TUNING.WORTOX_SOULSTEALER_RANGE = 8
elseif GetModConfigData("SoulstealRange") == 3 then
TUNING.WORTOX_SOULSTEALER_RANGE = 6
elseif GetModConfigData("SoulstealRange") == 2 then
TUNING.WORTOX_SOULSTEALER_RANGE = 3
elseif GetModConfigData("SoulstealRange") == 1 then
TUNING.WORTOX_SOULSTEALER_RANGE = 1
end

if GetModConfigData("ExtractRange") == 12 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 60
elseif GetModConfigData("ExtractRange") == 11 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 55
elseif GetModConfigData("ExtractRange") == 10 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 50
elseif GetModConfigData("ExtractRange") == 9 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 45
elseif GetModConfigData("ExtractRange") == 8 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 40
elseif GetModConfigData("ExtractRange") == 7 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 35
elseif GetModConfigData("ExtractRange") == 6 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 30
elseif GetModConfigData("ExtractRange") == 5 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 25
elseif GetModConfigData("ExtractRange") == 4 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 20
elseif GetModConfigData("ExtractRange") == 3 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 15
elseif GetModConfigData("ExtractRange") == 2 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 10
elseif GetModConfigData("ExtractRange") == 1 then
TUNING.WORTOX_SOULEXTRACT_RANGE = 5
end

if GetModConfigData("SanityAura") == 12 then
TUNING.WORTOX_SANITY_AURA_MULT = 1.5
elseif GetModConfigData("SanityAura") == 11 then
TUNING.WORTOX_SANITY_AURA_MULT = 1.25
elseif GetModConfigData("SanityAura") == 10 then
TUNING.WORTOX_SANITY_AURA_MULT = 1.0
elseif GetModConfigData("SanityAura") == 9 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.9
elseif GetModConfigData("SanityAura") == 8 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.8
elseif GetModConfigData("SanityAura") == 7 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.7
elseif GetModConfigData("SanityAura") == 6 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.6
elseif GetModConfigData("SanityAura") == 5 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.5
elseif GetModConfigData("SanityAura") == 4 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.33
elseif GetModConfigData("SanityAura") == 3 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.2
elseif GetModConfigData("SanityAura") == 2 then
TUNING.WORTOX_SANITY_AURA_MULT = 0.1
elseif GetModConfigData("SanityAura") == 1 then
TUNING.WORTOX_SANITY_AURA_MULT = 0
end

-- Config index -> eat-soul deltas. Defaults match vanilla OnEatSoul:
-- hunger CALORIES_MED (+25), sanity nice -10 / naughty 0 / neutral -5, health +0.
local SOUL_HUNGER = {
    [1] = 0, [2] = 5, [3] = 8, [4] = 10, [5] = 12, [6] = 15,
    [7] = 18, [8] = 22, [9] = 25, [10] = 30, [11] = 35, [12] = 40,
}
local SOUL_SANITY = {
    [1] = -20, [2] = -15, [3] = -10, [4] = -8, [5] = -5, [6] = -3,
    [7] = -1, [8] = 0, [9] = 1, [10] = 3, [11] = 5, [12] = 10,
}
local SOUL_HEALTH = {
    [1] = 0, [2] = 2.5, [3] = 5, [4] = 7.5, [5] = 10, [6] = 12.5,
    [7] = 15, [8] = 17.5, [9] = 20, [10] = 22.5, [11] = 25, [12] = 30,
}

TUNING.WORTOX_SOUL_NICE = {
    hunger = SOUL_HUNGER[GetModConfigData("NiceSoulHunger")] or 25,
    sanity = SOUL_SANITY[GetModConfigData("NiceSoulSanity")] or -10,
    health = SOUL_HEALTH[GetModConfigData("NiceSoulHealth")] or 0,
}
TUNING.WORTOX_SOUL_NAUGHTY = {
    hunger = SOUL_HUNGER[GetModConfigData("NaughtySoulHunger")] or 25,
    sanity = SOUL_SANITY[GetModConfigData("NaughtySoulSanity")] or 0,
    health = SOUL_HEALTH[GetModConfigData("NaughtySoulHealth")] or 0,
}
TUNING.WORTOX_SOUL_NEUTRAL = {
    hunger = SOUL_HUNGER[GetModConfigData("NeutralSoulHunger")] or 25,
    sanity = SOUL_SANITY[GetModConfigData("NeutralSoulSanity")] or -5,
    health = SOUL_HEALTH[GetModConfigData("NeutralSoulHealth")] or 0,
}

if GetModConfigData("Health") == 12 then
TUNING.WORTOX_HEALTH = 300
elseif GetModConfigData("Health") == 11 then
TUNING.WORTOX_HEALTH = 275
elseif GetModConfigData("Health") == 10 then
TUNING.WORTOX_HEALTH = 250
elseif GetModConfigData("Health") == 9 then
TUNING.WORTOX_HEALTH = 225
elseif GetModConfigData("Health") == 8 then
TUNING.WORTOX_HEALTH = 200
elseif GetModConfigData("Health") == 7 then
TUNING.WORTOX_HEALTH = 175
elseif GetModConfigData("Health") == 6 then
TUNING.WORTOX_HEALTH = 150
elseif GetModConfigData("Health") == 5 then
TUNING.WORTOX_HEALTH = 125
elseif GetModConfigData("Health") == 4 then
TUNING.WORTOX_HEALTH = 100
elseif GetModConfigData("Health") == 3 then
TUNING.WORTOX_HEALTH = 75
elseif GetModConfigData("Health") == 2 then
TUNING.WORTOX_HEALTH = 50
elseif GetModConfigData("Health") == 1 then
TUNING.WORTOX_HEALTH = 25
end

if GetModConfigData("Sanity") == 12 then
TUNING.WORTOX_SANITY = 300
elseif GetModConfigData("Sanity") == 11 then
TUNING.WORTOX_SANITY = 275
elseif GetModConfigData("Sanity") == 10 then
TUNING.WORTOX_SANITY = 250
elseif GetModConfigData("Sanity") == 9 then
TUNING.WORTOX_SANITY = 225
elseif GetModConfigData("Sanity") == 8 then
TUNING.WORTOX_SANITY = 200
elseif GetModConfigData("Sanity") == 7 then
TUNING.WORTOX_SANITY = 175
elseif GetModConfigData("Sanity") == 6 then
TUNING.WORTOX_SANITY = 150
elseif GetModConfigData("Sanity") == 5 then
TUNING.WORTOX_SANITY = 125
elseif GetModConfigData("Sanity") == 3 then
TUNING.WORTOX_SANITY = 100
elseif GetModConfigData("Sanity") == 3 then
TUNING.WORTOX_SANITY = 75
elseif GetModConfigData("Sanity") == 2 then
TUNING.WORTOX_SANITY = 50
elseif GetModConfigData("Sanity") == 1 then
TUNING.WORTOX_SANITY = 25
end

if GetModConfigData("Hunger") == 12 then
TUNING.WORTOX_HUNGER = 300
elseif GetModConfigData("Hunger") == 11 then
TUNING.WORTOX_HUNGER = 275
elseif GetModConfigData("Hunger") == 10 then
TUNING.WORTOX_HUNGER = 250
elseif GetModConfigData("Hunger") == 9 then
TUNING.WORTOX_HUNGER = 225
elseif GetModConfigData("Hunger") == 8 then
TUNING.WORTOX_HUNGER = 200
elseif GetModConfigData("Hunger") == 7 then
TUNING.WORTOX_HUNGER = 175
elseif GetModConfigData("Hunger") == 6 then
TUNING.WORTOX_HUNGER = 150
elseif GetModConfigData("Hunger") == 5 then
TUNING.WORTOX_HUNGER = 125
elseif GetModConfigData("Hunger") == 3 then
TUNING.WORTOX_HUNGER = 100
elseif GetModConfigData("Hunger") == 3 then
TUNING.WORTOX_HUNGER = 75
elseif GetModConfigData("Hunger") == 2 then
TUNING.WORTOX_HUNGER = 50
elseif GetModConfigData("Hunger") == 1 then
TUNING.WORTOX_HUNGER = 25
end

if GetModConfigData("Soulheal") == 12 then
  TUNING.WORTOX_HEAL = 60
elseif GetModConfigData("Soulheal") == 11 then
TUNING.WORTOX_HEAL = 55
elseif GetModConfigData("Soulheal") == 10 then
TUNING.WORTOX_HEAL = 50
elseif GetModConfigData("Soulheal") == 9 then
TUNING.WORTOX_HEAL = 45
elseif GetModConfigData("Soulheal") == 8 then
TUNING.WORTOX_HEAL = 40
elseif GetModConfigData("Soulheal") == 7 then
TUNING.WORTOX_HEAL = 35
elseif GetModConfigData("Soulheal") == 6 then
TUNING.WORTOX_HEAL = 30
elseif GetModConfigData("Soulheal") == 5 then
TUNING.WORTOX_HEAL = 25
elseif GetModConfigData("Soulheal") == 4 then
TUNING.WORTOX_HEAL = 20
elseif GetModConfigData("Soulheal") == 3 then
TUNING.WORTOX_HEAL = 15
elseif GetModConfigData("Soulheal") == 2 then
TUNING.WORTOX_HEAL = 10
elseif GetModConfigData("Soulheal") == 1 then
TUNING.WORTOX_HEAL = 5
end


-- Regular food absorption. Souls are separate. Defaults match vanilla (0.5).
-- SetAbsorptionModifiers(health, hunger, sanity).
local FOOD_MULT = {
    [1] = 0, [2] = 0.25, [3] = 0.50, [4] = 0.75, [5] = 1, [6] = 1.25, [7] = 1.5,
}
TUNING.WORTOX_FOOD_NICE = {
    health = FOOD_MULT[GetModConfigData("NiceFoodHealthMult")] or 0.5,
    hunger = FOOD_MULT[GetModConfigData("NiceFoodHungerMult")] or 0.5,
    sanity = FOOD_MULT[GetModConfigData("NiceFoodSanityMult")] or 0.5,
}
TUNING.WORTOX_FOOD_NAUGHTY = {
    health = FOOD_MULT[GetModConfigData("NaughtyFoodHealthMult")] or 0.5,
    hunger = FOOD_MULT[GetModConfigData("NaughtyFoodHungerMult")] or 0.5,
    sanity = FOOD_MULT[GetModConfigData("NaughtyFoodSanityMult")] or 0.5,
}
TUNING.WORTOX_FOOD_NEUTRAL = {
    health = FOOD_MULT[GetModConfigData("NeutralFoodHealthMult")] or 0.5,
    hunger = FOOD_MULT[GetModConfigData("NeutralFoodHungerMult")] or 0.5,
    sanity = FOOD_MULT[GetModConfigData("NeutralFoodSanityMult")] or 0.5,
}
-- Vanilla Create() reads this once; we re-apply per inclination below.
TUNING.WORTOX_FOOD_MULT = TUNING.WORTOX_FOOD_NEUTRAL.hunger

local function GetFoodMultsForInclination(inclination)
    if inclination == "nice" then
        return TUNING.WORTOX_FOOD_NICE
    elseif inclination == "naughty" then
        return TUNING.WORTOX_FOOD_NAUGHTY
    end
    return TUNING.WORTOX_FOOD_NEUTRAL
end

local function ApplyFoodMult(inst)
    if inst.components.eater == nil then
        return
    end
    local m = GetFoodMultsForInclination(inst.wortox_inclination)
    inst.components.eater:SetAbsorptionModifiers(m.health, m.hunger, m.sanity)
end

-- Soul stacks use 40 or 60. Those are vanilla STACK_SIZE_SMALLITEM and
-- STACK_SIZE_TINYITEM, so stackable_replica.lua must stay the game's copy.
-- An old override omitted ClearPreviewStackSize and crashed inventory refresh.
if GetModConfigData("maxsouls") == 12 then
TUNING.WORTOX_MAX_SOULS = 60
TUNING.STACK_SIZE_EXTRASMALLITEM = 60
elseif GetModConfigData("maxsouls") == 11 then
TUNING.WORTOX_MAX_SOULS = 55
TUNING.STACK_SIZE_EXTRASMALLITEM = 60
elseif GetModConfigData("maxsouls") == 10 then
TUNING.WORTOX_MAX_SOULS = 50
TUNING.STACK_SIZE_EXTRASMALLITEM = 60
elseif GetModConfigData("maxsouls") == 9 then
TUNING.WORTOX_MAX_SOULS = 45
TUNING.STACK_SIZE_EXTRASMALLITEM = 60
elseif GetModConfigData("maxsouls") == 8 then
TUNING.WORTOX_MAX_SOULS = 40
TUNING.STACK_SIZE_EXTRASMALLITEM = 60
elseif GetModConfigData("maxsouls") == 7 then
TUNING.WORTOX_MAX_SOULS = 35
TUNING.STACK_SIZE_EXTRASMALLITEM = 40
elseif GetModConfigData("maxsouls") == 6 then
TUNING.WORTOX_MAX_SOULS = 30
TUNING.STACK_SIZE_EXTRASMALLITEM = 40
elseif GetModConfigData("maxsouls") == 5 then
TUNING.WORTOX_MAX_SOULS = 25
TUNING.STACK_SIZE_EXTRASMALLITEM = 40
elseif GetModConfigData("maxsouls") == 4 then
TUNING.WORTOX_MAX_SOULS = 20
TUNING.STACK_SIZE_EXTRASMALLITEM = 40
elseif GetModConfigData("maxsouls") == 3 then
TUNING.WORTOX_MAX_SOULS = 15
TUNING.STACK_SIZE_EXTRASMALLITEM = 40
elseif GetModConfigData("maxsouls") == 2 then
TUNING.WORTOX_MAX_SOULS = 10
TUNING.STACK_SIZE_EXTRASMALLITEM = 40
elseif GetModConfigData("maxsouls") == 1 then
TUNING.WORTOX_MAX_SOULS = 5
TUNING.STACK_SIZE_EXTRASMALLITEM = 40
end

-- Health, hunger, sanity, food, soul cap, and extract range come from TUNING.
-- Damage, absorption, food mult, and eating a soul are applied on the real Wortox prefab.
AddPrefabPostInit("wortox", function(inst)
    -- TheWorld is still nil while the player prefab is first built.
    if TheWorld ~= nil and not TheWorld.ismastersim then
        return
    end

    if inst.components.combat ~= nil then
        inst.components.combat.damagemultiplier = TUNING.WORTOX_DAMAGEMULT
    end
    if inst.components.health ~= nil then
        inst.components.health:SetAbsorptionAmount(TUNING.WORTOX_ABSORPTION)
    end

    ApplyFoodMult(inst)
    inst:ListenForEvent("wortox_inclination_changed", ApplyFoodMult)

    if inst.components.souleater == nil then
        return
    end

    inst.components.souleater:SetOnEatSoulFn(function(eater)
        local stats = TUNING.WORTOX_SOUL_NEUTRAL
        if eater.wortox_inclination == "nice" then
            stats = TUNING.WORTOX_SOUL_NICE
        elseif eater.wortox_inclination == "naughty" then
            stats = TUNING.WORTOX_SOUL_NAUGHTY
        end
        eater.components.hunger:DoDelta(stats.hunger)
        eater.components.sanity:DoDelta(stats.sanity)
        eater.components.health:DoDelta(stats.health)
        eater:DoCheckSoulsAdded()
    end)
end)

-- The game soul has the sloweat tag the eat state requires. Only the stack limit is custom.
AddPrefabPostInit("wortox_soul", function(inst)
    if TheWorld ~= nil and not TheWorld.ismastersim then
        return
    end
    if inst.components.stackable == nil then
        return
    end
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_EXTRASMALLITEM
end)
