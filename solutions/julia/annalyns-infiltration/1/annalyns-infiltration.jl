function can_do_fast_attack(knight_awake)
    return knight_awake != true
end

function can_spy(knight_awake, archer_awake, prisoner_awake)
    return (knight_awake != false) || (archer_awake != false) || (prisoner_awake != false)
end

function can_signal_prisoner(archer_awake, prisoner_awake)
    return (archer_awake == false) && (prisoner_awake == true)
end

function can_free_prisoner(knight_awake, archer_awake, prisoner_awake, dog_present)
    return (dog_present == true && archer_awake == false) || (prisoner_awake == true && knight_awake == false && archer_awake == false)
end
