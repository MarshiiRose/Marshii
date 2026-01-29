SMODS.Atlas {
    key = "MarshiiAscendedSoul",
    path = "MarshiiAscendedSoul.png",
    px = 71,
    py = 95,
}

SMODS.Sound {
    key = 'marshii_thunder',
    path = 'ascend.ogg'
}

--[[
ASCENDED SOUL SPAWN MECHANICS:
Has a 1/1000 chance to replace any given card in a booster pack.
This rate cannot be altered via external means.
For every ante that an ascended soul isn't found, the odds are doubled.
Once an ascended soul is found (used or unused), this rate reesets.
]]
--future me, implement this please :D


SMODS.Consumable {
    object_type = 'Consumable',
    atlas = "MarshiiAscendedSoul",
    key = 'ascendedsoul',
    set = 'Spectral',

    hidden = true,
    soul_set = {'Spectral', 'Tarot', 'Planet'},
    soul_rate = 0.001,
    can_repeat_soul = false,

    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    config = { max_highlighted = 1, mod_conv = '_a' },
    loc_vars = function(self,info_queue, card)

    end,

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.jokers.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    SMODS.destroy_cards(G.jokers.highlighted[1])
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.1)
        for i = 1, #G.jokers.highlighted do
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    SMODS.add_card { key = ((G.jokers.highlighted[1].config.center_key) .. '_a') }
                    play_sound('marshii_thunder', percent, 0.6) --source: https://pixabay.com/sound-effects/nature-loud-thunder-192165/ and https://pixabay.com/sound-effects/musical-heavenly-choir-of-angels-322708/
                    G.jokers.highlighted[i]:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
    end,

    can_use = function(self, card)
        return G.jokers and #G.jokers.highlighted > 0 and #G.jokers.highlighted <= card.ability.max_highlighted
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('ASCENDED', HEX("f0ea3e"), G.C.WHITE, 1 )
 	end,

}