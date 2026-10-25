function score(x, y)
    distance = sqrt(x^2 + y^2)

    if 0 ≤ distance ≤ 1
        return 10
    end

    if 1 < distance ≤ 5
        return 5
    end

    if 5 < distance ≤ 10
        return 1
    end

    return 0
end
