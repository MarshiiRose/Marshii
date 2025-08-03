SMODS.Atlas {
    key = "MarshiiJokers",
    path = "MarshiiJokers.png",
    px = 71,
    py = 95,
}

--marshii
SMODS.Joker {
    key = 'marshii',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 0, y = 0},
    rarity = 3,
    cost = 8,
    blueprint_compat = true,
	perishable_compat = false,
	eternal_compat = true,
    unlocked = true,
    -- scoring
    config = { extra = { Xmult = 3 } },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult} }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
        end
    end,
    -- badges
 	set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('nyaa~', HEX('8CADFF'), G.C.WHITE, 1 )
 	end,
}

--lapiz
SMODS.Joker {
    key = 'lapiz',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 1, y = 0},
    soul_pos = {x = 1, y = 1},
    rarity = 1,
    cost = 5,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- scoring
    config = { extra = { chips = 100 } },
    loc_vars = function(self,info_queue,card)
        return {vars = {card.ability.extra.chips} }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('Lazuli', HEX('4843e6'), G.C.WHITE, 1 )
 	end
}

--shoobell
SMODS.Joker {
    key = 'shoobell',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 2, y = 0},
    rarity = 1,
    cost = 6,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- scoring
    config = { extra = { mult = 5 , chips = 15 } },
    loc_vars = function(self,info_queue,card)
        return {vars = {card.ability.extra.chips, card.ability.extra.mult} }
    end,
    calculate = function(self,card,context)
        -- I just wanna make bro give mult and chips to some wild cards yo :sob:
        if context.individual and SMODS.has_enhancement(context.other_card, 'm_wild') and context.cardarea == G.play then
            return {
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult
            }
        end
    end,
    -- badges
 	set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('IRL Jimbo', HEX('87ff66'), G.C.WHITE, 1 )
 	end
}

--jovi
SMODS.Joker {
    key = 'jovi',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 3, y = 0},
    rarity = 1,
    cost = 8,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    --scoring
    config = { extra = { repetitions = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.repetitions } }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            if context.other_card == context.scoring_hand[1] or context.other_card == context.scoring_hand[#context.scoring_hand] then
            return {
                repetitions = card.ability.extra.repetitions
            }
            end
        end
    end,
    -- badges
 	set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('IRL Jimbo', HEX('87ff66'), G.C.WHITE, 1 )
 	end
}

--jumperbumper
SMODS.Joker {
    key = 'jumperbumper',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 0, y = 2},
    soul_pos = {x = 0, y = 3},
    rarity = 2,
    cost = 8,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { money = 3 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money} }
    end,
    calculate = function(self, card, context)
        if context.remove_playing_cards then
            local destroyed = 0
            for _, removed_card in ipairs(context.removed) do
                destroyed = destroyed + 1
            end
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
                return {
                    dollars = destroyed * card.ability.extra.money,
                    message = 'Plundered!'
                }
        end
    end,
    -- badges
 	set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('ICoSPT', HEX('ffea63'), G.C.WHITE, 1 )
 	end
}

--enders
SMODS.Joker {
    key = 'endersdoom',
    -- info stuff
    config = { extra = { Xmult = 1, Xmult_gain = 0.25 } },
    atlas = 'MarshiiJokers',
    pos = {x = 1, y = 2},
    soul_pos = {x = 1, y = 3},
    rarity = 2,
    cost = 10,
    blueprint_compat = true,
	perishable_compat = false,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_gain} }
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.set == 'Spectral' then
            card.ability.extra.Xmult = card.ability.extra.Xmult+ card.ability.extra.Xmult_gain
            return {
                message = 'Upgraded!',
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
    end,
    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}

--colin
SMODS.Joker {
    key = 'ocolin',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 2, y = 2},
    soul_pos = {x = 2, y = 3},
    rarity = 2,
    cost = 4,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { repetitions = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.repetitions } }
    end,
    calculate = function(self, card, context)
        if context.repetition then
            if context.other_card:is_suit('Hearts') then
               return {
                    repetitions = card.ability.extra.repetitions
               }
            end
        end
    end,
    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}

--podfour
SMODS.Joker {
    key = 'podfour',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 3, y = 2},
    soul_pos = {x = 3, y = 3},
    rarity = 2,
    cost = 4,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { chips = 30 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round then
            if SMODS.has_enhancement(context.other_card, 'm_steel') then 
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end,
    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}

--acid
SMODS.Joker {
    key = 'acid',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 4, y = 2},
    soul_pos = {x = 4, y = 3},
    rarity = 'marshii_epic',
    cost = 4,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { chips = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.final_scoring_step then
            if G.GAME.blind.chips > G.GAME.chips then
                return {
                    chips = G.GAME.chips
                }
            end
        end
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}

--viat
SMODS.Joker {
    key = 'vita',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 6, y = 2},
    soul_pos = {x = 6, y = 3},
    rarity = 2,
    cost = 8,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { Xmult = 0.2, } },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_lucky

        local lucky_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
                if SMODS.has_enhancement(playing_card, 'm_lucky') then lucky_tally = lucky_tally + 1 end
            end
        end
        return { vars = { card.ability.extra.Xmult, 1 + card.ability.extra.Xmult * lucky_tally } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local lucky_tally = 0
            for _, playing_card in ipairs(G.playing_cards) do
                if SMODS.has_enhancement(playing_card, 'm_lucky') then lucky_tally = lucky_tally + 1 end
            end
            return {
                Xmult = 1 + card.ability.extra.Xmult * lucky_tally,
            }
        end
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}

--nels femboy
SMODS.Joker {
    key = 'nels',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 5, y = 2},
    soul_pos = {x = 5, y = 3},
    rarity = 'marshii_fuck_you',
    cost = 100,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { Xmult = 500000, h_size = 12, cursed_rounds = 0, total_rounds = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.h_size, card.ability.extra.total_rounds, card.ability.extra.cursed_rounds } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
        if context.selling_self and (card.ability.extra.cursed_rounds >= card.ability.extra.total_rounds) and not context.blueprint then
            SMODS.add_card { key = "j_marshii_ascended_nels"}
            return { message = 'HOW DO YOU LIKE THEM APPLES?!'}
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            card.ability.extra.cursed_rounds = card.ability.extra.cursed_rounds + 1
            if card.ability.extra.cursed_rounds == card.ability.extra.total_rounds then
                local eval = function(card) return not card.REMOVED end
                juice_card_until(card, eval, true)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(-card.ability.extra.h_size)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(card.ability.extra.h_size)
    end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}

--Ascended Nels
SMODS.Joker {
    key = 'ascended_nels',
    -- info stuff
    atlas = 'MarshiiJokers',
    pos = {x = 7, y = 2},
    soul_pos = {x = 7, y = 3},
    rarity = 'marshii_ascended',
    cost = 8,
    blueprint_compat = true,
	perishable_compat = false,
	eternal_compat = false,
    unlocked = true,
    -- Scoring
    config = { extra = { h_size = 44, mult = 999999, xmult = 999999, chips = 999999, xchips = 999999 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.xmult, card.ability.extra.chips, card.ability.extra.xchips }}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult,
                xmult = card.ability.extra.xmult,
                chips = card.ability.extra.chips,
                xchips = card.ability.extra.xchips,
                message = 'MEOW'
            }
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(card.ability.extra.h_size)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-card.ability.extra.h_size)
	end,

    set_badges = function(self, card, badges)
 		badges[#badges+1] = create_badge('SillyMaxxer', HEX('c483de'), G.C.WHITE, 1 )
 	end
}