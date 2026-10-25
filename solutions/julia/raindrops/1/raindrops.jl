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

    if isempty(str)
        return string(number)
    else
        return str
    end
end
