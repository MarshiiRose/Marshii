SMODS.Atlas {
    key = 'MarshiiEnhancements',
    path = 'MarshiiEnhancements.png',
    px = 71,
    py = 95,
}

SMODS.Enhancement {
    key = 'wooden',
    atlas = 'MarshiiEnhancements',
    pos = { x = 0, y = 0 },
    config = { extra = { bonus = 0, mult = 0, bonus_gain = 1, mult_gain = 1} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.bonus, card.ability.extra.mult, card.ability.extra.bonus_gain, card.ability.extra.mult_gain } }
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.main_scoring then
            if next(SMODS.find_card('j_marshii_cracker')) then
                card.ability.extra.bonus = card.ability.extra.bonus + (card.ability.extra.bonus_gain * 2)
                card.ability.extra.mult = card.ability.extra.mult + (card.ability.extra.mult_gain * 2)
            else
                card.ability.extra.bonus = card.ability.extra.bonus + card.ability.extra.bonus_gain
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            end
            return {
                chips = card.ability.extra.bonus,
                mult = card.ability.extra.mult,
                message = 'Upgraded!'
            }
            end
    end
}
