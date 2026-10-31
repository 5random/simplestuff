const lookUp_time_per_juice = Dict(
    "Pure Strawberry Joy" => 0.5,
    "Energizer" => 1.5,
    "Green Garden" => 1.5,
    "Tropical Island" => 3.0,
    "All or Nothing" => 5.0,
)

const lookUp_wedges_per_lime = Dict("small" => 6, "medium" => 8, "large" => 10)

function time_to_mix_juice(juice)
    defaultTime = 2.5
    return get(lookUp_time_per_juice, juice, defaultTime)
end

function wedges_from_lime(size)
    return lookUp_wedges_per_lime[size]
end

function limes_to_cut(needed, limes)
    needed == 0 && return 0
    isempty(limes) && return 0

    wedges_cut = 0
    for (n, lime) in enumerate(limes)
        wedges_cut += wedges_from_lime(lime)
        wedges_cut >= needed && return n
    end

    return length(limes)
end


function order_times(orders)
    return time_to_mix_juice.(orders)
end

function remaining_orders(time_left, orders)
    while time_left > 0 && !isempty(orders)
        time_left -= time_to_mix_juice(orders[1])
        popfirst!(orders)
    end

    return orders
end
