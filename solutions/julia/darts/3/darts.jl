function score(x, y)
    distance = hypot(x, y)

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
