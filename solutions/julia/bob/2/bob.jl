const ANS = Dict(
    (true, false, false) => "Sure.",
    (false, true, false) => "Whoa, chill out!",
    (true, true, false) => "Calm down, I know what I'm doing!",
    (false, false, true) => "Fine. Be that way!",
)

function bob(stimulus)
    strp = strip(stimulus)

    questsion = endswith(strp, '?')
    yelled =
        any(isletter, strp) && all(isuppercase(char) for char in strp if isletter(char))
    silence = isempty(strp)

    return get(ANS, (questsion, yelled, silence), "Whatever.")
end
