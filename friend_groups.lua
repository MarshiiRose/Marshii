SMODS.Atlas {
    key = "MarshiiConsumables",
    path = "MarshiiConsumables.png",
    px = 71,
    py = 95,
}

SMODS.ConsumableType {
    key = 'friend_group',
    primary_colour = HEX('2f6bc4'),
    secondary_colour = HEX('234aad'),
    collection_rows = { 4, 1 },
    default = 'c_marshii_lazuli',
    shop_rate = 0.0,
    loc_txt = {
        collection = 'Friend Group Cards',
        label = 'friend group',
        name = "Friend Group Cards",
        undiscovered = {
            name = 'wsg bro',
            text = {
                'bro aint no way you playing',
                'modded without unlock all smh'
            }
        }
    },
    can_stack = false,
    can_divide = false,
}

SMODS.UndiscoveredSprite{
    key = "friend_group",
    atlas = "MarshiiConsumables",
    path = "MarshiiConsumables.png",
    pos = { x = 0, y = 0 },
    px = 71,
    py = 95,
}

--Lazuli
local lazulis = {
    'marshii_lapiz'
}

SMODS.Consumable {
    object_type = 'Consumable',
    atlas = "MarshiiConsumables",
    key = 'lazuli',
    set = 'friend_group',
    pos = { x = 1, y = 0 },
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                SMODS.add_card { key = 'j_' .. pseudorandom_element(lazulis, "seed") }
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return #G.jokers.cards < G.jokers.config.card_limit or card.area == G.jokers
    end,
}

--grass / irl. HOLY SMILES MAKING CONSUMABLES IS SO HARD WHAT ;-; </3
local irl_friends = {
    'marshii_shoobell',
    'marshii_jovi',
}

SMODS.Consumable {
    object_type = 'Consumable',
    atlas = "MarshiiConsumables",
    key = 'irl',
    set = 'friend_group',
    pos = { x = 2, y = 0 },
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                SMODS.add_card { key = 'j_' .. pseudorandom_element(irl_friends, "seed") }
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return #G.jokers.cards < G.jokers.config.card_limit or card.area == G.jokers
    end,
}

--icospt
local icospters = {
    'marshii_jumperbumper',
}

SMODS.Consumable {
    object_type = 'Consumable',
    atlas = "MarshiiConsumables",
    key = 'icospt',
    set = 'friend_group',
    pos = { x = 3, y = 0 },
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                SMODS.add_card { key = 'j_' .. pseudorandom_element(icospters, "seed") }
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return #G.jokers.cards < G.jokers.config.card_limit or card.area == G.jokers
    end,
}

--silly gang
local silly_friends = {
    'marshii_endersdoom',
    'marshii_ocolin',
    'marshii_podfour',
    'marshii_acid',
    'marshii_vita',
    'marshii_nels',
}

SMODS.Consumable {
    object_type = 'Consumable',
    atlas = "MarshiiConsumables",
    key = 'silly_gang',
    set = 'friend_group',
    pos = { x = 4, y = 0 },
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                SMODS.add_card { key = 'j_' .. pseudorandom_element(silly_friends, "seed") }
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return #G.jokers.cards < G.jokers.config.card_limit or card.area == G.jokers
    end,
}

--wafflecord
--[[
SMODS.Consumable {
    object_type = 'Consumable',
    atlas = "MarshiiConsumables",
    key = 'wafflecord',
    set = 'friend_group',
    pos = { x = 0, y = 2 }
}
]]