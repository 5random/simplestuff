const ANS = Dict(
    (true, false, false, false) => "Sure.",
    (false, true, false, false) => "Whoa, chill out!",
    (true, true, true, false) => "Calm down, I know what I'm doing!",
    (false, false, false, true) => "Fine. Be that way!",
)

function bob(stimulus)
    strp = strip(stimulus)

    questsion = endswith(strp, '?')
    yelled =
        any(isletter, strp) && all(isuppercase(char) for char in strp if isletter(char))
    yelled_question = questsion && yelled
    silence = isempty(strp)

    return get(ANS, (questsion, yelled, yelled_question, silence), "Whatever.")
end
