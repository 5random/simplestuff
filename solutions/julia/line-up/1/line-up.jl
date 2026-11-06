ordinal_numerals = ["st", "nd", "rd", "th"]

function line_up(name, number)
    abs_num = abs(number)
    last_digit = abs_num % 10
    last_two_digits = abs_num % 100

    ordinal_numeral = ""
    (last_digit == 1 && last_two_digits != 11) && (ordinal_numeral = ordinal_numerals[1])
    (last_digit == 2 && last_two_digits != 12) && (ordinal_numeral = ordinal_numerals[2])
    (last_digit == 3 && last_two_digits != 13) && (ordinal_numeral = ordinal_numerals[3])
    if ordinal_numeral == ""
        ordinal_numeral = ordinal_numerals[4]
    end
    return string(
        name,
        ", you are the ",
        number,
        ordinal_numeral,
        " customer we serve today. Thank you!",
    )
end
