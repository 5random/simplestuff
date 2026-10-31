function message(msg)
    return strip(split(msg, ':')[2])
end

function log_level(msg)
    lowercase(strip(split(msg, ':')[1], ('[', ']')))
end

function reformat(msg)
    return string(message(msg), " (", log_level(msg), ")")
end
