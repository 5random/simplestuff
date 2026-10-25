function score(x, y)
    distance = sqrt(x^2 + y^2)

    if distance ≤ 1
        return 10
    end

    if distance ≤ 5
        return 5
    end

    if distance ≤ 10
        return 1
    end

    return 0
end
