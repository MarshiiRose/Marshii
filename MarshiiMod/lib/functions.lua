-- I can't believe I managed to get this to work on my own im so happy :D
-- Making these stuff global since multiple jokers use these
-- I feel so pro doing this lol

Marshii_furry = {
    'j_marshii_lapiz',
    'j_marshii_qrstve',
    'j_marshii_lapiz_a',
    'j_marshii_qrstve_a',
    'j_marshii_vita',
    'j_marshii_podfour'
}

function Find_joker_in(tbl, str)
    for _, element in ipairs(tbl) do
        if (element == str) then
            return true
        end
    end
end