SMODS.Atlas {
    key = "Boosters",
    path = "boosters.png",
    px = 71,
    py = 95,
}

--Friendship Packs
SMODS.Booster {
    key = 'friend_pack_normal',
    group_key = 'k_friend_pack',
    atlas = 'Boosters',
    weight = 1,
    kind = 'friend_pack',
    cost = 6,
    pos = { x = 0, y = 0 },
    config = { extra = 3, choose = 1 },
    draw_hand = false,
    ease_background_colour = function(self)
            ease_background_colour_blind(G.STATES.TAROT_PACK)
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, HEX('ffa1fd'), HEX('98edfa') },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
    create_card = function(self, card, i)
        local _card
        _card = {
            set = "friend_group",
            area = G.pack_cards,
            skip_materialize = true,
        }
        return _card
    end,
}

SMODS.Booster {
    key = 'friend_pack_mega',
    group_key = 'k_friend_pack',
    atlas = 'Boosters',
    weight = 1,
    kind = 'friend_pack',
    cost = 8,
    pos = { x = 1, y = 0 },
    config = { extra = 4, choose = 2 },
    draw_hand = false,
    ease_background_colour = function(self)
            ease_background_colour_blind(G.STATES.TAROT_PACK)
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, HEX('ffa1fd'), HEX('98edfa') },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
    create_card = function(self, card, i)
        local _card
        _card = {
            set = "friend_group",
            area = G.pack_cards,
            skip_materialize = true,
        }
        return _card
    end,
}