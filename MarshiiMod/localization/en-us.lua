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
            j_marshii_marshii = {
                name = 'Marshii',
                text = {
                    'Gives {X:mult,C:white}x#1#{} Mult',
                    '{C:inactive}MarshiiRose, now in your favorite{}',
                    '{C:inactive}poker-themed deckbuilding roguelike!{}',
                },
            },
            j_marshii_lapiz = {
                name = 'Lapiz',
                text = {
                    '{C:chips}+#1#{} chips',
                    'Gains {C:chips}+#2#{} chips when buying any joker',
                    'That has the {B:1,C:white}Furry{} badge',
                    '{C:inactive}"Woof"{}'
                },
            },
            j_marshii_qrstve = {
                name = 'Qrstve',
                text = {
                    '{C:mult}+#1#{} mult',
                    'Gains {C:mult}+#2#{} mult when buying any joker',
                    'That has the {B:1,C:white}Furry{} badge',
                    '{C:inactive}"beware of my soft fluffy tail"{}'
                },
            },
            j_marshii_shoobell = {
                name = 'Shoobell',
                text = {
                'All {C:attention}Wild Cards{} give',
                '{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult when scored',
                '{C:inactive}A shoebill stork... but cooler',
                },
            },
            j_marshii_jovi = {
                name = 'Jovial',
                text = {
                    'Retriggers {C:attention}first{} and {C:attention}last played card',
                    '{C:inactive}One of my friends silly dog!{}',
                }
            },
            j_marshii_jumperbumper = {
                name = 'Jumperbumper',
                text = {
                    'Earn {C:money}$#1# for ',
                    'every {C:attention}card destroyed',
                    '{C:inactive}"Insert Cash or Select Payment Type"{}'
                }
            },
            j_marshii_endersdoom = {
                name = 'EndersDoom',
                text = {
                    'Gains {X:mult,C:white}x#2#{} Mult whenever',
                    'a {C:spectral}spectral card{} is used',
                    '{C:inactive}(Currently {X:mult,C:white}x#1#{C:inactive} Mult)',
                    '{C:inactive}"Can I give you the quote tomorrow"{}',
                }
            },
            j_marshii_ocolin = {
                name = 'oColin',
                text = {
                    'Retrigger all {C:hearts}Hearts{} cards, including ones in hand',
                    "{C:inactive}He's just a squishy lil guy!{}"
                }
            },
            j_marshii_podfour = {
                name = 'Podfour',
                text = {
                    'All {C:attention}steel cards{} give',
                    '{C:chips}+#1#{} Chips when in hand',
                    '{C:inactive}"cat planet 92%"{}'
                }
            },
            j_marshii_acid = {
                name = 'Acid',
                text = {
                    'adds current round score to played hand as {C:chips}chips{}',
                    '{C:inactive}"Death cant stop me."{}',
                    ''
                }
            },
            j_marshii_vita = {
                name = 'Vita the Proto',
                text = {
                    'Gains {X:mult,C:white}x#1#{} mult for each {C:attention}lucky card{} in your {C:attention}full deck{}',
                    '{C:inactive}(Currently {}{X:mult,C:white}x#2#{}{C:inactive}){}',
                    '{C:inactive}"paws at you"{}'
                }
            },
            j_marshii_nels = {
                name = 'Nels Nelson',
                text = {
                    '{X:mult,C:white}x#1#{} mult but {C:attention}-#2#{} hand size',
                    '{C:inactive}"Thats frickinnnn, whats his tush?"{}',
                }
            },
            j_marshii_ascended_nels = {
                name = 'The Divine Light, Nhelv',
                text = {
                    '{G.C.DARK_EDITION} ? ? ? {}',
                    '{C:inactive}"FUCK YOU MARSHII"{}'
                }
            },
            j_marshii_yeeter = {
                name = 'Crab King',
                text = {
                    'Generates a {C:tarot}Tarot{} card for every #2# {C:attention}face card{} triggers',
                    '{C:inactive}(Currently #1#){}',
                    '{C:inactive}"I *do* exist!"'
                }
            },
            j_marshii_enni = {
                name = 'Enni-Time',
                text = {
                    'When blind is defeated, convert leftmost card in hand to a {C:attention,T:m_marshii_wooden}Wooden Card{}',
                    '{C:inactive}"Ill have you know that isnt mispeled"'
                }
            },
            j_marshii_cracker = {
                name = 'Cracker',
                text = {
                    '{C:attention,T:m_marshii_wooden}Wooden Cards{} scale twice as fast',
                    '{C:inactive}"Only 342 more therapy sessions till',
                    '{C:inactive}the terraria trauma goes away"'
                }
            },
            j_marshii_mantis = {
                name = 'Mother Mantis',
                text = {
                    '',
                    '{C:inactive}"When they jokering on my balatro."'
                }
            },
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
        Spectral={},
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