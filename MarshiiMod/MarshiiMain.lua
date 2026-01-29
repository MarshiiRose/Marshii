SMODS.Atlas {
    key = 'modicon',
    px = 32,
    py = 32,
    path = 'modicon.png'
}

assert(SMODS.load_file("items/jokers.lua"))()
assert(SMODS.load_file("items/jokers_ascended.lua"))()
assert(SMODS.load_file("items/friend_groups.lua"))()
assert(SMODS.load_file("items/rarities.lua"))()
assert(SMODS.load_file("items/boosters.lua"))()
assert(SMODS.load_file("items/enhancements.lua"))()
assert(SMODS.load_file("items/menu_joker.lua"))()
assert(SMODS.load_file("items/tarots.lua"))()
assert(SMODS.load_file("items/spectrals.lua"))()
assert(SMODS.load_file("lib/ui.lua"))()
assert(SMODS.load_file("lib/functions.lua"))()