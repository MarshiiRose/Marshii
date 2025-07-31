SMODS.Atlas {
    key = "MarshiiModded",
    path = "MarshiiModded.png",
    px = 71,
    py = 95,
}

SMODS.Atlas {
    key = 'modicon',
    px = 32,
    py = 32,
    path = 'modicon.png'
}

SMODS.Rarity {
    key = 'fuck_you',
    loc_txt = {
        name = 'Fuck You'
    },
    badge_colour = HEX("292929"),
    default_weight = 10
}

--marshii
SMODS.Joker {
    key = 'marshii',
    loc_txt = {
        name = 'Marshii',
        text = {
            'Gives {X:mult,C:white}x#1#{} Mult',
            '{C:inactive}MarshiiRose, now in your favorite{}',
            '{C:inactive}poker-themed deckbuilding roguelike!{}',
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
    end
}

--lapiz
SMODS.Joker {
    key = 'lapiz',
    loc_txt = {
        name = 'Lapiz',
        text = {
            'Gives {C:chips}+#1#{} Chips',
            '{C:inactive}"Woof"{}'
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
    end
}

--shoobell
SMODS.Joker {
    key = 'shoobell',
    loc_txt = {
        name = 'Shoobell',
        text = {
            'All {C:attention}Wild Cards{} give',
            '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult when scored',
            '{C:inactive}A shoebill stork... but cooler',
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
        if context.individual and SMODS.has_enhancement(context.other_card, 'm_wild') and context.cardarea == G.play and
        context.other_card == context.scoring_hand[1] then
            return {
                chips = card.ability.extra.chips,
                mult = card.ability.extra.mult
            }
        end
    end
}

--jovi
SMODS.Joker {
    key = 'jovi',
    loc_txt = {
        name = 'Jovial',
        text = {
            'Retriggers {C:attention}first{} and {C:attention}last played card',
            '{C:inactive}One of my friends silly dog!{}',
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
    end
}

--jumperbumper
SMODS.Joker {
    key = 'jumperbumper',
    loc_txt = {
        name = 'Jumperbumper',
        text = {
            'Earn {C:money}$#1# for ',
            'every {C:attention}card destroyed',
            '{C:inactive}"Insert Cash or Select Payment Type"{}'
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
                    dollars = destroyed * card.ability.extra.money
                }
        end
    end
}

--enders
SMODS.Joker {
    key = 'endersdoom',
    loc_txt = {
        name = 'EndersDoom',
        text = {
            'Gains {X:mult,C:white}x#2#{} Mult whenever',
            'a {C:attention}spectral card{} is used',
            '{C:inactive}(Currently {X:mult,C:white}x#1#{C:inactive} Mult)',
            '{C:inactive}"Can I give you the quote tomorrow"{}',
        }
    },
    -- info stuff
    config = { extra = { Xmult = 1, Xmult_gain = 0.25 } },
    atlas = 'MarshiiModded',
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
    end
}

--colin
SMODS.Joker {
    key = 'ocolin',
    loc_txt = {
        name = 'oColin',
        text = {
            'Retrigger all {C:hearts}Hearts{} cards, including ones in hand',
            "{C:inactive}He's just a squishy lil guy!{}"
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
    end
}

--podfour
SMODS.Joker {
    key = 'podfour',
    loc_txt = {
        name = 'Podfour',
        text = {
            'All {C:attention}steel cards{} give',
            '{C:chips}+#1#{} Chips when in hand',
            '{C:inactive}"cat planet 92%"{}'
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

--acid
SMODS.Joker {
    key = 'acid',
    loc_txt = {
        name = 'Acid',
        text = {
            '',
            '{C:inactive}"Death cant stop me."{}',
            ''
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
    pos = {x = 4, y = 2},
    soul_pos = {x = 4, y = 3},
    rarity = 3,
    cost = 4,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { } },
    loc_vars = function(self, info_queue, card)

    end,
    calculate = function(self, card, context)

    end
}

--nels femboy
SMODS.Joker {
    key = 'nels',
    loc_txt = {
        name = 'Nhelv Nelson',
        text = {
            '{X:mult,C:white}x#1#{} mult but {C:attention}-#2#{} hand size',
            '{C:inactive}"May 3rd"{}',
            ''
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
    pos = {x = 5, y = 2},
    soul_pos = {x = 5, y = 3},
    rarity = 'Marshii_fuck_you',
    cost = 100,
    blueprint_compat = true,
	perishable_compat = true,
	eternal_compat = true,
    unlocked = true,
    -- Scoring
    config = { extra = { Xmult = 352025, h_size = 53} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.h_size } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult
            }
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(-card.ability.extra.h_size)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(card.ability.extra.h_size)
    end
}

--viat
SMODS.Joker {
    key = 'vita',
    loc_txt = {
        name = 'Vita the Proto',
        text = {
            'Gains {X:mult,C:white}x#1#{} mult for each {C:attention}lucky card{} in your {C:attention}full deck{}',
            '{C:inactive}(Currently {}{X:mult,C:white}x#2#{}{C:inactive}){}',
            '{C:inactive}"paws at you"{}'
        }
    },
    -- info stuff
    atlas = 'MarshiiModded',
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
    end
}