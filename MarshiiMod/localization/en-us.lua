return {
    descriptions = {
        Back={},
        Blind={},
        Edition={},
        Enhanced={
            m_marshii_wooden = {
                name = 'Wooden Card',
                text = {
                    'Gives {C:chips}+#1#{} chips and {C:mult}+#2#{} mult',
                    'Gains {C:chips}+#3#{} chips and {C:mult}+#4#{} mult when triggered'
                }
            }
        },
        Joker={
            j_marshii_marshi = {
                name = 'Marshii',
                text = {
                    '{X:mult,C:white}x#1#{} Mult',
                    '{C:inactive,s:0.8}MarshiiRose, now in your favorite{}',
                    '{C:inactive,s:0.8}poker-themed deckbuilding roguelike!{}',
                },
            },
            j_marshii_lapiz = {
                name = 'Lapiz',
                text = {
                    '{C:chips}+#1#{} chips',
                    'Gains {C:chips}+#2#{} chips when buying any joker',
                    'That has the {B:1,C:white}Furry{} badge',
                    '{C:inactive,s:0.8}"Woof"{}'
                },
            },
            j_marshii_qrstve = {
                name = 'Qrstve',
                text = {
                    '{C:mult}+#1#{} mult',
                    'Gains {C:mult}+#2#{} mult when buying any joker',
                    'That has the {B:1,C:white}Furry{} badge',
                    '{C:inactive,s:0.8}"beware of my soft fluffy tail"{}'
                },
            },
            j_marshii_shoobell = {
                name = 'Shoobell',
                text = {
                'All {C:attention}Wild Cards{} give',
                '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult when scored',
                '{C:inactive,s:0.8}A shoebill stork... but cooler',
                },
            },
            j_marshii_jovi = {
                name = 'Jovial',
                text = {
                    'Retriggers {C:attention}first{} and {C:attention}last played card',
                    '{C:inactive,s:0.8}One of my friends silly dog!{}',
                }
            },
            j_marshii_jumperbumper = {
                name = 'Jumperbumper',
                text = {
                    'Earn {C:money}$#1# for ',
                    'every {C:attention}card destroyed',
                    '{C:inactive,s:0.8}"Insert Cash or Select Payment Type"{}'
                }
            },
            j_marshii_endersdoom = {
                name = 'EndersDoom',
                text = {
                    'Gains {X:mult,C:white}x#2#{} Mult whenever',
                    'a {C:spectral}Spectral{} card is used',
                    '{C:inactive}(Currently {X:mult,C:white}x#1#{C:inactive} Mult)',
                    '{C:inactive,s:0.8}"Can I give you the quote tomorrow"{}',
                }
            },
            j_marshii_ocolin = {
                name = 'oColin',
                text = {
                    'Retrigger all {C:hearts}Hearts{} cards, including ones in hand',
                    "{C:inactive,s:0.8}He's just a squishy lil guy!{}"
                }
            },
            j_marshii_podfour = {
                name = 'Podfour',
                text = {
                    'All {C:attention}Steel Cards{} give',
                    '{C:chips}+#1#{} Chips when in hand',
                    '{C:inactive,s:0.8}"cat planet 92%"{}'
                }
            },
            j_marshii_acid = {
                name = 'Acid',
                text = {
                    'Adds current round score to played hand as {C:chips}Chips{}',
                    '{C:inactive,s:0.8}"Death cant stop me."{}',
                    ''
                }
            },
            j_marshii_vita = {
                name = 'Vita the Proto',
                text = {
                    'Gains {X:mult,C:white}x#1#{} mult for each {C:attention}lucky card{} in your {C:attention}full deck{}',
                    '{C:inactive}(Currently {}{X:mult,C:white}x#2#{}{C:inactive}){}',
                    '{C:inactive,s:0.8}"paws at you"{}'
                }
            },
            j_marshii_nels = {
                name = 'Nels Nelson',
                text = {
                    '{X:mult,C:white}x#1#{} Mult but {C:attention}-#2#{} hand size',
                    '{C:inactive,s:0.8}"Thats frickinnnn, whats his tush?"{}',
                }
            },
            j_marshii_ascended_nels = {
                name = 'The Divine Light, Nhelv',
                text = {
                    '{G.C.DARK_EDITION} ? ? ? {}',
                    '{C:inactive,s:0.8}"FUCK YOU MARSHII"{}'
                }
            },
            j_marshii_yeeter = {
                name = 'Crab King',
                text = {
                    'Generates a {C:tarot}Tarot{} card for every #2# {C:attention}face card{} triggers',
                    '{C:inactive}(Currently #1#){}',
                    '{C:inactive}(Must have room){}',
                    '{C:inactive,s:0.8}"I *do* exist!"'
                }
            },
            j_marshii_enni = {
                name = 'Enni-Time',
                text = {
                    'Convert the leftmost scored card',
                    'into a {C:attention}Wooden Card{}',
                    'when hand is played',
                    '{C:inactive,s:0.8}"Ill have you know that isnt mispeled"'
                }
            },
            j_marshii_cracker = {
                name = 'Cracker',
                text = {
                    '{C:attention}Wooden Cards{} scale twice as fast',
                    '{C:inactive}"Only 342 more therapy sessions till',
                    '{C:inactive,s:0.8}the terraria trauma goes away"'
                }
            },
            j_marshii_mantis = {
                name = 'Mother Mantis',
                text = {
                    'On {C:attention}first hand{} of round,',
                    'remove enhancement from scored {C:attention}Wooden Cards{}',
                    'but adds {C:attention}x0.25{} of {C:chips}+Chips{} and {C:mult}+Mult{} to itself',
                    'as {X:chips,C:white}XChips{} and {X:mult,C:white}XMult{}',
                    '{C:inactive}Currently{} {X:chips,C:white}X#1#{} {C:inactive}and{} {X:mult,C:white}X#2#{}',
                    '{C:inactive,s:0.8}"When they jokering on my balatro."'
                }
            },

            --!!!!!!!!!!!!!!!!!!!!ASCENDED VARIATIONS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

            j_marshii_marshi_a = {
                name = 'Marshious Rosary',
                text = {
                    '{X:dark_edition,C:white}^#1#{} Mult',
                    '{C:inactive,s:0.8}Face my wrath.{}'
                }
            },
            j_marshii_endersdoom_a = {
                name = 'Code Master, 3ndersd00m',
                text = {
                    '{X:mult,C:white}#1#x{} Mult',
                    'Gains {X:mult,C:white}#2#x{} Mult for every {C:spectral}Spectral{} card used.',
                    'Each {C:spectral}spectral{} card in your {C:attention}consumable{} area gives',
                    '{X:mult,C:white}#3#x{} Mult and increases scaling by {X:mult,C:white}#4#x{} Mult',
                    '{C:inactive,s:0.8}This is all a simulation. Reality can be anything you wish'
                }
            },
            j_marshii_yeeter_a = {
                name = 'Cosmic Crustacean, Yeeter',
                text = {
                    'Generates a {C:dark_edition}Negative Tarot{} card for every 5 {C:attention}face card{} triggers',
                    'Upgrades every {C:legendary}poker hand{} by {C:attention}1 level{} when using a {C:tarot}Tarot{} card',
                    '{C:green}1 in 2{} chance to create a {C:dark_edition}Negative{} copy of any {C:tarot}Tarot{} card when obtained',
                    '{C:inactive}(Currently #1#)',
                    '{C:inactive,s:0.8}Dominates the infinite abyss of the Sky.'
                }
            }, 
            j_marshii_lapiz_a = {
                name = 'Azure Wolf, Icarus',
                text = {
                    '{X:dark_edition,C:white}^#1#{} chips',
                    'Gains {X:dark_edition,C:white}^#2#{} chips when buying any joker',
                    'That has the {B:1,C:white}Furry{} badge',
                    '{C:inactive,s:0.8}Fur made of pure plasma, formed from the sun on his forehead collapsing{}'
                }
            }, 
            j_marshii_qrstve_a = {
                name = 'Amethyst Leopard, Qrstve',
                text = {
                    '{X:dark_edition,C:white}^#1#{} mult',
                    'Gains {X:dark_edition,C:white}^#2#{} mult when buying any joker',
                    'That has the {B:1,C:white}Furry{} badge',
                }
            },
            --[[j_marshii__a = {
                name = '',
                text = {

                }
            }, ]]
        },
        friend_group={
            c_marshii_lazuli = {
                name = 'Lazuli',
                text = {
                    'Summons a joker from the',
                    'Lazuli friend group!'
                }
            },
            c_marshii_irl = {
                name = 'IRL Grass',
                text = {
                    'Summons a joker from the',
                    'IRL friend group!'
                }
            },
            c_marshii_icospt = {
                name = 'Payment Type',
                text = {
                    'Summons a joker from the',
                    'ICoSPT discord server!'
                }
            },
            c_marshii_silly_gang = {
                name = 'Silly Candy',
                text = {
                    'Summons a joker from the',
                    'Silly Gang!!'
                }
            },
            c_marshii_wafflecord = {
                name = 'The Waffle',
                text = {
                    'Summons a joker from the',
                    'WaffleTime Fancord!'
                }
            },
        },
        Other={
            p_marshii_friend_pack_normal = {
                name = "Friend Group Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:HEX('2f6bc4')} Friend Group{} cards to",
                    "be used immediately",
                },
            },
            p_marshii_friend_pack_mega = {
                name = "Mega Friend Group Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:HEX('2f6bc4')} Friend Group{} cards to",
                    "be used immediately",
                },
            }
        },
        Planet={},
        Spectral={
            c_marshii_ascendedsoul = {
                name = "{C:edition,s:1.1,E:1}Ascended Soul{}",
                text = {
                    "{C:gold,E:1}Unimaginable power condensed into a single crystal.",
                    "{C:gold,E:1}Only very few people can control its power...",
                    " ",
                    "{C:inactive}It appears as it pleases. It will not wait for you.{}"
                }
            },
        },
        Stake={},
        Tag={},
        Tarot={
            c_marshii_tree = {
                name = "The Tree",
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "card into a",
                    "{C:attention}#2#",
                },
            },
        },
        Voucher={},
    },
    misc = {
        dictionary = {
            k_friend_pack = 'Friend Group Pack'
        }
    }
}



--I literally copy + pasted this template from the wiki lol. I'll keep some of these empty fields in case I add new stuff to this mod