earth_year_in_seconds = 31_557_600

planetary_periods_in_earth_years = Dict(
    "Mercury" => 0.2408467,
    "Venus" => 0.61519726,
    "Earth" => 1.0,
    "Mars" => 1.8808158,
    "Jupiter" => 11.862615,
    "Saturn" => 29.447498,
    "Uranus" => 84.016846,
    "Neptune" => 164.79132,
)

function onEarth(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Earth"])
end

function onMercury(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Mercury"])
end

function onVenus(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Venus"])
end

function onMars(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Mars"])
end

function onJupiter(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Jupiter"])
end

function onSaturn(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Saturn"])
end

function onUranus(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Uranus"])
end

function onNeptune(seconds)
    return seconds/(earth_year_in_seconds*planetary_periods_in_earth_years["Neptune"])
end
