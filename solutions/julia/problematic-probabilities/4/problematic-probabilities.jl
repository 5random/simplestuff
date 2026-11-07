function rationalize(successes, trials)
    return successes .// trials
end

function probabilities(successes, trials)
    return successes ./ trials
end

function checkmean(successes, trials)
    n = length(successes)


    rats = rationalize(successes, trials)
    mean_rats = sum(rats)/n

    probs = probabilities(successes, trials)
    mean_probs = sum(probs)/n

    (float(mean_rats) == mean_probs) ? true : mean_rats
end

function checkprob(successes, trials)
    total_rats = prod(rationalize(successes, trials))
    total_probs = prod(probabilities(successes, trials))

    (float(total_rats) == total_probs) ? true : total_rats
end
