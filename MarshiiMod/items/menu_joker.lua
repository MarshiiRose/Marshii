-- vro why is it genuinely impossible to figure out how to  make a custom joker appear on the title screen
-- anyways if it wasn't for the super awesome vall karri mod + Balatro discord I'd probably be dead rn 
-- https://github.com/real-niacat/VallKarri.git MY GOAT *W cat :mending_heart:*

local game_main_menu_ref = Game.main_menu
function Game:main_menu()

    game_main_menu_ref(self)

    G.E_MANAGER:add_event(Event({ --im sorry lily but ima yoink some of that code bc I dont understand any of ts :sob: :c
        func = function()
            local newcard = Card(
                G.title_top.T.x,
                G.title_top.T.y,
                G.CARD_W,
                G.CARD_H,
                G.P_CARDS.empty,
                G.P_CENTERS.j_marshii_marshi, --replace this with the p_center of your card, you can keep everything else the same
                { bypass_discovery_center = true }
            )
            newcard.click = function(self)
                G.FUNCS["openModUI_" .. self.config.center.mod.id]()
            end
            G.title_top:emplace(newcard)
            newcard:start_materialize({ G.C.BLUE }, false, G.SETTINGS.GAMESPEED * 0.25)
            newcard.T.w = newcard.T.w * 1.1 * 1.2
            newcard.T.h = newcard.T.h * 1.1 * 1.2
            newcard.no_ui = true
            newcard:set_sprites(newcard.config.center)

            if #G.title_top.cards == 2 then
                for _, card in pairs(G.title_top.cards) do
                    if card.base.id then
                        card:start_dissolve({ G.C.BLUE }, false, G.SETTINGS.GAMESPEED * 0.25)
                    end
                end
            end
            return true
        end,
        trigger = "after",
        delay = 0.25,
    }))

    return ret

end