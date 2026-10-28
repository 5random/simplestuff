function eggcount(number)
    count = 0
    while number != 0
        number &= number-1
        count += 1
    end
    return count
end
