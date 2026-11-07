function today(birds_per_day)
    return birds_per_day[end]
end

function increment_todays_count(birds_per_day)
    birds_per_day[end] += 1
    return birds_per_day
end

function has_day_without_birds(birds_per_day)
    return any(iszero, birds_per_day)
end

function count_for_first_days(birds_per_day, num_days)
    return sum(birds_per_day[1:num_days])
end

const BUSY_DAYS = 5
function busy_days(birds_per_day)
    return count(≥(BUSY_DAYS), birds_per_day)
end

function average_per_day(week1, week2)
    week1 = @. (week1 + week2) * 0.5
    return week1
end
