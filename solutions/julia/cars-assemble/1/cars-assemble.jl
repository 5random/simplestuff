function success_rate(speed)
    speed == 0 && return 0.0
    1 ≤ speed ≤ 4 && return 1.0
    5 ≤ speed ≤ 8 && return 0.9
    speed == 9 && return 0.8
    speed == 10 && return 0.77
end

function production_rate_per_hour(speed)
    production_rate = 221
    return production_rate * speed * success_rate(speed)
end

function working_items_per_minute(speed)
    return floor(Int, 1/60*production_rate_per_hour(speed))
end
