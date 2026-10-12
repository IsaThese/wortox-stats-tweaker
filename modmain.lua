local TUNING = GLOBAL.TUNING
local math = GLOBAL.math
local tonumber = GLOBAL.tonumber
local tostring = GLOBAL.tostring
local string = GLOBAL.string

-- Rules for free-form config numbers (Configs Extended text fields).
-- mult:        multipliers, -10..10, 3 decimals
-- absorb:      damage resistance as fraction; 25 or 0.25 both OK → clamp -1..1
-- stat:        max health/hunger/sanity, 1..200 integers
-- range:       distances / caps / heal amounts, 0..200 integers
-- delta:       eat-soul deltas, -200..200, 1 decimal
-- rate_per_min: continuous sanity/min, -200..200, 1 decimal
local RULES = {
    mult        = { min = -10,  max = 10,  places = 3 },
    absorb      = { min = -1,   max = 1,   places = 3, percent = true },
    stat        = { min = 1,    max = 200, places = 0 },
    range       = { min = 0,    max = 200, places = 0 },
    delta       = { min = -200, max = 200, places = 1 },
    rate_per_min = { min = -200, max = 200, places = 1 },
}

local function Round(n, places)
    local m = 10 ^ places
    if n >= 0 then
        return math.floor(n * m + 0.5) / m
    end
    return math.ceil(n * m - 0.5) / m
end

local function SanitizeNumber(raw, default, kind, name)
    local rule = RULES[kind] or RULES.stat
    local n = tonumber(raw)
    if n == nil then
        print(string.format(
            "[Wortox Stats Tweak] Invalid '%s' (%s); using default %s",
            name, tostring(raw), tostring(default)))
        return default
    end

    -- Percentages: 25 → 0.25, -50 → -0.5. Values already in (-1,1] stay as-is.
    if rule.percent then
        local a = math.abs(n)
        if a > 1 and a <= 100 then
            n = n / 100
        end
    end

    n = Round(n, rule.places)

    if n < rule.min or n > rule.max then
        local clamped = math.max(rule.min, math.min(rule.max, n))
        print(string.format(
            "[Wortox Stats Tweak] '%s' (%s) out of range [%s, %s]; clamped to %s",
            name, tostring(n), tostring(rule.min), tostring(rule.max), tostring(clamped)))
        n = clamped
    end

    return n
end

local function ConfigNumber(name, default, kind)
    return SanitizeNumber(GetModConfigData(name), default, kind, name)
end

-- Empty / "vanilla" / non-numeric → nil (caller keeps vanilla behavior).
local function ConfigNumberOrNil(name, kind)
    local raw = GetModConfigData(name)
    if raw == nil or raw == "" then
        return nil
    end
    if type(raw) == "string" and string.lower(raw) == "vanilla" then
        return nil
    end
    local n = tonumber(raw)
    if n == nil then
        print(string.format(
            "[Wortox Stats Tweak] Invalid '%s' (%s); using vanilla",
            name, tostring(raw)))
        return nil
    end
    return SanitizeNumber(raw, nil, kind, name)
end

TUNING.WORTOX_DAMAGEMULT = ConfigNumber("DamageMult", 1, "mult")
TUNING.WORTOX_ABSORPTION = ConfigNumber("DamageAbsorption", 0, "absorb")
TUNING.WORTOX_SOULHEAL_RANGE = ConfigNumber("SoulhealRange", 8, "range")
TUNING.WORTOX_SOULSTEALER_RANGE = ConfigNumber("SoulstealRange", 8, "range")
TUNING.WORTOX_SOULEXTRACT_RANGE = ConfigNumber("ExtractRange", 20, "range")
TUNING.WORTOX_SANITY_AURA_MULT = ConfigNumber("SanityAura", 0.5, "mult")
TUNING.WORTOX_HEALTH = ConfigNumber("Health", 200, "stat")
TUNING.WORTOX_SANITY = ConfigNumber("Sanity", 150, "stat")
TUNING.WORTOX_HUNGER = ConfigNumber("Hunger", 175, "stat")
TUNING.WORTOX_HEAL = ConfigNumber("Soulheal", 20, "range")
TUNING.WORTOX_DAY_SANITY_PER_MIN = ConfigNumber("DaySanityPerMin", 0, "rate_per_min")
TUNING.WORTOX_NIGHT_SANITY_PER_MIN = ConfigNumberOrNil("NightSanityPerMin", "rate_per_min")
TUNING.WORTOX_ITEM_SANITY_MULT = ConfigNumber("ItemSanityMult", 1, "mult")

-- Optional flat /min hat overrides. nil = vanilla dapperness (scaled by ItemSanityMult).
TUNING.WORTOX_HAT_SANITY_PER_MIN = {
    tophat = ConfigNumberOrNil("TopHatSanityPerMin", "rate_per_min"),
    magician = ConfigNumberOrNil("MagicianTopHatSanityPerMin", "rate_per_min"),
    walrushat = ConfigNumberOrNil("WalrusHatSanityPerMin", "rate_per_min"),
}

-- Eat-soul deltas. Defaults match vanilla OnEatSoul.
TUNING.WORTOX_SOUL_NICE = {
    hunger = ConfigNumber("NiceSoulHunger", 25, "delta"),
    sanity = ConfigNumber("NiceSoulSanity", -10, "delta"),
    health = ConfigNumber("NiceSoulHealth", 0, "delta"),
}
TUNING.WORTOX_SOUL_NAUGHTY = {
    hunger = ConfigNumber("NaughtySoulHunger", 25, "delta"),
    sanity = ConfigNumber("NaughtySoulSanity", 0, "delta"),
    health = ConfigNumber("NaughtySoulHealth", 0, "delta"),
}
TUNING.WORTOX_SOUL_NEUTRAL = {
    hunger = ConfigNumber("NeutralSoulHunger", 25, "delta"),
    sanity = ConfigNumber("NeutralSoulSanity", -5, "delta"),
    health = ConfigNumber("NeutralSoulHealth", 0, "delta"),
}

-- Regular food absorption. Souls are separate. Defaults match vanilla (0.5).
-- SetAbsorptionModifiers(health, hunger, sanity).
TUNING.WORTOX_FOOD_NICE = {
    health = ConfigNumber("NiceFoodHealthMult", 0.5, "mult"),
    hunger = ConfigNumber("NiceFoodHungerMult", 0.5, "mult"),
    sanity = ConfigNumber("NiceFoodSanityMult", 0.5, "mult"),
}
TUNING.WORTOX_FOOD_NAUGHTY = {
    health = ConfigNumber("NaughtyFoodHealthMult", 0.5, "mult"),
    hunger = ConfigNumber("NaughtyFoodHungerMult", 0.5, "mult"),
    sanity = ConfigNumber("NaughtyFoodSanityMult", 0.5, "mult"),
}
TUNING.WORTOX_FOOD_NEUTRAL = {
    health = ConfigNumber("NeutralFoodHealthMult", 0.5, "mult"),
    hunger = ConfigNumber("NeutralFoodHungerMult", 0.5, "mult"),
    sanity = ConfigNumber("NeutralFoodSanityMult", 0.5, "mult"),
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
local maxsouls = ConfigNumber("maxsouls", 20, "range")
TUNING.WORTOX_MAX_SOULS = maxsouls
if maxsouls <= 35 then
    TUNING.STACK_SIZE_EXTRASMALLITEM = 40
else
    TUNING.STACK_SIZE_EXTRASMALLITEM = 60
end

-- Flat /min for overridden hats. Not scaled by ItemSanityMult (dapperness_mult).
local function GetHatOverridePerMin(item)
    if item == nil then
        return nil
    end
    local hats = TUNING.WORTOX_HAT_SANITY_PER_MIN
    if item.prefab == "walrushat" then
        return hats.walrushat
    end
    if item.prefab == "tophat" then
        if item.components.magiciantool ~= nil then
            return hats.magician
        end
        return hats.tophat
    end
    return nil
end

local function GetEquippableDapperness(owner, equippable)
    -- Overridden hats contribute 0 to the multed dapperness sum; rate comes from custom_rate_fn.
    if GetHatOverridePerMin(equippable.inst) ~= nil then
        return 0
    end
    return equippable:GetDapperness(owner, owner.components.sanity.no_moisture_penalty)
end

-- Must go through Sanity:Recalc via custom_rate_fn (like item dapperness), not a
-- separate DoDelta timer. Recalc sets self.rate → ratescale → client badge arrows.
-- Return value is sanity per second; Recalc multiplies by dt.
local function WortoxCustomSanityRate(inst, dt)
    local sanity = inst.components.sanity
    if sanity == nil then
        return 0
    end

    local per_min = 0

    local light_blocked = sanity.light_drain_immune_sources ~= nil
        and sanity.light_drain_immune_sources:Get()
    if not light_blocked then
        local world = GLOBAL.TheWorld
        if world ~= nil and world.state ~= nil then
            local is_day = world.state.isday and not world:HasTag("cave")
            if is_day then
                per_min = per_min + (TUNING.WORTOX_DAY_SANITY_PER_MIN or 0)
            elseif TUNING.WORTOX_NIGHT_SANITY_PER_MIN ~= nil then
                per_min = per_min + TUNING.WORTOX_NIGHT_SANITY_PER_MIN
            end
        end
    end

    local inventory = inst.components.inventory
    if inventory ~= nil then
        for _, item in pairs(inventory.equipslots) do
            local override = GetHatOverridePerMin(item)
            if override ~= nil then
                per_min = per_min + override
            end
        end
    end

    return per_min / 60
end

-- Health, hunger, sanity, food, soul cap, and extract range come from TUNING.
-- Damage, absorption, food mult, and eating a soul are applied on the real Wortox prefab.
AddPrefabPostInit("wortox", function(inst)
    -- TheWorld is still nil while the player prefab is first built.
    local world = GLOBAL.TheWorld
    if world ~= nil and not world.ismastersim then
        return
    end

    if inst.components.combat ~= nil then
        inst.components.combat.damagemultiplier = TUNING.WORTOX_DAMAGEMULT
    end
    if inst.components.health ~= nil then
        inst.components.health:SetAbsorptionAmount(TUNING.WORTOX_ABSORPTION)
    end

    if inst.components.sanity ~= nil then
        inst.components.sanity.dapperness_mult = TUNING.WORTOX_ITEM_SANITY_MULT
        inst.components.sanity.get_equippable_dappernessfn = GetEquippableDapperness

        -- Flat night/min replaces vanilla darkness scaling.
        if TUNING.WORTOX_NIGHT_SANITY_PER_MIN ~= nil then
            inst.components.sanity.night_drain_mult = 0
        end

        local prev_fn = inst.components.sanity.custom_rate_fn
        inst.components.sanity.custom_rate_fn = function(sinst, dt)
            local extra = WortoxCustomSanityRate(sinst, dt)
            if prev_fn ~= nil then
                return extra + prev_fn(sinst, dt)
            end
            return extra
        end

        -- Vanilla badge ignores tiny rates (down arrow needs < -0.02/sec ≈ -1.2/min).
        -- Force LOW arrows whenever net rate is non-zero but still NEUTRAL.
        local sanity = inst.components.sanity
        local old_recalc = sanity.Recalc
        sanity.Recalc = function(self, dt)
            old_recalc(self, dt)
            local RATE_SCALE = GLOBAL.RATE_SCALE
            if self.rate < 0 and self.ratescale == RATE_SCALE.NEUTRAL then
                self.ratescale = RATE_SCALE.DECREASE_LOW
            elseif self.rate > 0 and self.ratescale == RATE_SCALE.NEUTRAL then
                self.ratescale = RATE_SCALE.INCREASE_LOW
            end
        end
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
    local world = GLOBAL.TheWorld
    if world ~= nil and not world.ismastersim then
        return
    end
    if inst.components.stackable == nil then
        return
    end
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_EXTRASMALLITEM
end)
