function transform(ch)
    ch == '-' && return "_"
    (isspace(ch) || isnumeric(ch)) && return ""
    isuppercase(ch) && return string("-", lowercase(ch))
    'α' <= ch <= 'ω' && return "?"

    return string(ch)
end

function clean(str)
    return join(transform(ch) for ch in str)
end
