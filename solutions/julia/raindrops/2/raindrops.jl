function raindrops(number)
    str = ""

    if number % 3 == 0
        str = str * "Pling"
    end

    if number % 5 == 0
        str = str * "Plang"
    end

    if number % 7 == 0
        str = str * "Plong"
    end

    return isempty(str) ? string(number) : str
end
