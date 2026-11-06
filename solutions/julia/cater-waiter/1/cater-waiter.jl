function clean_ingredients(dish_name, dish_ingredients)
    return (dish_name, Set(dish_ingredients))
end

function check_drinks(drink_name, drink_ingredients)
    any(in(ALCOHOLS), drink_ingredients) && return string(drink_name, " Cocktail")
    return string(drink_name, " Mocktail")
end

function categorize_dish(dish_name, dish_ingredients)
    (dish_ingredients ⊆ VEGAN) && return string(dish_name, ": VEGAN")
    (dish_ingredients ⊆ VEGETARIAN) && return string(dish_name, ": VEGETARIAN")
    (dish_ingredients ⊆ PALEO) && return string(dish_name, ": PALEO")
    (dish_ingredients ⊆ KETO) && return string(dish_name, ": KETO")
    (dish_ingredients ⊆ OMNIVORE) && return string(dish_name, ": OMNIVORE")
end

function tag_special_ingredients(dish)
    return dish[1], intersect(Set(dish[2]), SPECIAL_INGREDIENTS)
end

function compile_ingredients(dishes)
    return union(dishes...)
end

function separate_appetizers(dishes, appetizers)
    return setdiff(dishes, appetizers)
end

function singleton_ingredients(dishes, intersection)
    return setdiff(compile_ingredients(dishes), intersection)
end
