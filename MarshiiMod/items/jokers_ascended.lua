
SMODS.Atlas {
    key = "MJA_marshii_a",
    path = "MJA_marshii_a.png",
    px = 71, py = 95,
    atlas_table = 'ANIMATION_ATLAS',
	frames = 10,
	fps = 5
}

--marshii
SMODS.Joker {
    key = 'marshi_a',
    -- info stuff
    atlas = 'MJA_marshii_a',
    pos = {x = 0, y = 1},
    soul_pos = { x = 0, y = 0 },
    rarity = 'marshii_ascended',
    cost = 999,
    blueprint_compat = false,
	perishable_compat = false,
	eternal_compat = true,
    unlocked = true,
    -- scoring
    config = { extra = { Emult = 3 } },
    loc_vars = function(self,info_queue,card)
        return { vars = { card.ability.extra.Emult } }
    end,

    calculate = function(self,card,context)
        if context.joker_main then
            return {
                mult = (-mult)+mult^(card.ability.extra.Emult),
                mult_message = { 
                    message = '^' .. card.ability.extra.Emult,
                    colour = G.C.DARK_EDITION
                }
            }
        end
    end,

    -- badges
 	set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('nyaa~', HEX('8CADFF'), G.C.WHITE, 1 )
 	end,
}

--enders
SMODS.Atlas({
    key = "MJA_endersdoom_a",
    path = "MJA_endersdoom_a.png",
    px = 71, py = 95,
    atlas_table = 'ANIMATION_ATLAS',
	frames = 5,
	fps = 10
})

SMODS.Joker {
    key = 'endersdoom_a',
    -- info stuff
    config = { extra = { Xmult = 1, Xmult_gain = 0.5,  Spectral_Xmult = 1.5, Xmult_gain_boost = 0.25 } },
    atlas = 'MJA_endersdoom_a',
    pos = {x = 0, y = 1},
    soul_pos = {x = 0, y = 0},
    rarity = 'marshii_ascended',
    cost = 999,
    blueprint_compat = false,
	perishable_compat = false,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    loc_vars = function(self, info_queue, card)
        if G.GAME.round > 0 then
            local spectral_tally = 0
                for k, consumable in pairs(G.consumeables.cards) do
                        if consumable.ability.set == 'Spectral' then
                            spectral_tally = spectral_tally + 1
                        end
                end
            return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain + (card.ability.extra.Xmult_gain_boost * spectral_tally), card.ability.extra.Spectral_Xmult, card.ability.extra.Xmult_gain_boost} }
        else
            return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain, card.ability.extra.Spectral_Xmult, card.ability.extra.Xmult_gain_boost} }
        end
    end,
    calculate = function(self, card, context)
        
        local spectral_tally = 0
        for k, consumable in pairs(G.consumeables.cards) do
                if consumable.ability.set == 'Spectral' then
                    spectral_tally = spectral_tally + 1
                end
        end

        if context.using_consumeable and context.consumeable.ability.set == 'Spectral' then
            card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_gain + (card.ability.extra.Xmult_gain_boost * spectral_tally))
            return {
                message = 'Hacked!',
                colour = G.C.MULT,
                card = card
            }
        end
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
       end
       if context.other_consumeable and context.other_consumeable.ability.set == 'Spectral' then
            return {
                x_mult = card.ability.extra.Spectral_Xmult,
            }
       end
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}

--yeeter
SMODS.Atlas({
    key = "MJA_yeeter_a",
    path = "MJA_yeeter_a.png",
    px = 71, py = 95,
    atlas_table = 'ANIMATION_ATLAS',
	frames = 5,
	fps = 5
})

SMODS.Joker {
    key = 'yeeter_a',
    -- info stuff
    atlas = 'MJA_yeeter_a',
    pos = {x = 0, y = 1},
    soul_pos = {x = 0, y = 0},
    rarity = 'marshii_ascended',
    cost = 999,
    blueprint_compat = false,
	perishable_compat = false,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { gift_gain = 0, arcana_gift = 5, odds = 2, level_num = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.gift_gain, card.ability.extra.arcana_gift }}
    end,
    calculate = function(self, card, context)

        if context.individual and context.cardarea == G.play and context.other_card:is_face() then
            card.ability.extra.gift_gain = card.ability.extra.gift_gain + 1
            if  card.ability.extra.gift_gain >= card.ability.extra.arcana_gift then
                while #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit and card.ability.extra.gift_gain >= card.ability.extra.arcana_gift do
                    SMODS.add_card {
                        set = 'Tarot',
                        edition = 'e_negative'
                    }
                    card.ability.extra.gift_gain = card.ability.extra.gift_gain - card.ability.extra.arcana_gift
                    return {
                        message = 'Cosmic Gift!'
                    }
                end
                card.ability.extra.gift_gain = 0
            end
        end

        if context.using_consumeable and context.consumeable.ability.set == 'Tarot' then
            --[[if  then
            
            end --]]
            SMODS.upgrade_poker_hands({ instant = true, level_up = 3 })
        end
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('Waffler', HEX('c4a26e'), G.C.WHITE, 1 )
 	end
}

--Lapiz
SMODS.Atlas({
    key = "MJA_lapiz_a",
    path = "MJA_lapiz_a.png",
    px = 71, py = 95,
    atlas_table = 'ANIMATION_ATLAS',
	frames = 15,
	fps = 10
})

SMODS.Joker {
    key = 'lapiz_a',
    -- info stuff
    atlas = 'MJA_lapiz_a',
    pos = {x = 0, y = 1},
    soul_pos = {x = 0, y = 0},
    rarity = 'marshii_ascended',
    cost = 999,
    blueprint_compat = false,
	perishable_compat = false,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { Echips = 1, Echips_gain = 1, Echips_bonus = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Echips, card.ability.extra.Echips_gain, card.ability.extra.Echips_bonus, colours = { HEX('FF9CB8') } } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            if next(SMODS.find_card('j_marshii_qrstve')) then 
                return {
                    chips = (-hand_chips)+hand_chips^((card.ability.extra.Echips) + card.ability.extra.Echips_bonus),
                    chips_message = {
                        message = '^' .. (card.ability.extra.Echips) + card.ability.extra.Echips_bonus,
                        colour = G.C.DARK_EDITION
                    }
                }
            else
                if next(SMODS.find_card('j_marshii_qrstve_a')) then 
                    return {
                        chips = (-hand_chips)+hand_chips^((card.ability.extra.Echips) ^ card.ability.extra.Echips_bonus),
                        chips_message = {
                            message = '^' .. (card.ability.extra.Echips) ^ card.ability.extra.Echips_bonus,
                            colour = G.C.DARK_EDITION
                        }
                    }
                else
                    return {
                        chips = (-hand_chips)+hand_chips^(card.ability.extra.Echips),
                        chips_message = {
                            message = '^' .. card.ability.extra.Echips,
                            colour = G.C.DARK_EDITION
                        }
                    }
                end
            end
        end

        if context.card_added and Find_joker_in(Marshii_furry, context.card.config.center.key) and not context.blueprint then
            card.ability.extra.Echips = card.ability.extra.Echips + card.ability.extra.Echips_gain
            return {
                message = 'Super fuzzy!'
            }
        end
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('Lazuli', HEX('4843e6'), G.C.WHITE, 1 )
        badges[#badges+1] = create_badge('Furry', HEX('ff9cb8'), G.C.WHITE, 0.8 )
 	end

}

--QITTY
SMODS.Atlas({
    key = "MJA_qrstve_a",
    path = "MJA_qrstve_a.png",
    px = 71, py = 95,
    atlas_table = 'ANIMATION_ATLAS',
	frames = 15,
	fps = 10
})

SMODS.Joker {
    key = 'qrstve_a',
    -- info stuff
    atlas = 'MJA_qrstve_a',
    pos = {x = 0, y = 1},
    soul_pos = {x = 0, y = 0},
    rarity = 'marshii_ascended',
    cost = 999,
    blueprint_compat = false,
	perishable_compat = false,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { Emult = 1, Emult_gain = 1, Emult_bonus = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Emult, card.ability.extra.Emult_gain, card.ability.extra.Emult_bonus, colours = { HEX('FF9CB8') } } }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            if next(SMODS.find_card('j_marshii_lapiz')) then 
                return {
                    mult = (-mult)+mult^((card.ability.extra.Emult) + card.ability.extra.Emult_bonus),
                    mult_message = {
                        message = '^' .. card.ability.extra.Emult + card.ability.extra.Emult_bonus,
                        colour = G.C.DARK_EDITION
                    }
                }
            else
                if next(SMODS.find_card('j_marshii_lapiz_a')) then
                    return {
                        mult = mult^((card.ability.extra.Emult) ^ card.ability.extra.Emult_bonus),
                        mult_message = {
                            message = '^' .. card.ability.extra.Emult ^ card.ability.extra.Emult_bonus,
                            colour = G.C.DARK_EDITION
                        }
                    }
                    else
                        return {
                            mult = (-mult)+mult^(card.ability.extra.Emult),
                            mult_message = {
                                message = '^' .. card.ability.extra.Emult,
                                colour = G.C.DARK_EDITION
                            }
                        }
                    end
            end
        end

        if context.card_added and Find_joker_in(Marshii_furry, context.card.config.center.key) and not context.blueprint then
            card.ability.extra.Emult = card.ability.extra.Emult + card.ability.extra.Emult_gain
            return {
                message = 'Super fluffy!'
            }
        end
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('Lazuli', HEX('4843e6'), G.C.WHITE, 1 )
        badges[#badges+1] = create_badge('Furry', HEX('ff9cb8'), G.C.WHITE, 0.8 )
 	end

}