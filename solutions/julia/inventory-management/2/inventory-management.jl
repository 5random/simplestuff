function create_inventory(items)
    inventory = Dict{eltype(items),Int}()

    for item in items
        inventory[item] = get(inventory, item, 0) + 1
    end
    return inventory
end

function add_items(inventory, items)
    return mergewith!(+, inventory, create_inventory(items))
end

function decrement_items(inventory, items)
    items_dict = create_inventory(items)

    for (item, quantity) in items_dict
        if haskey(inventory, item)
            inventory[item] = max(0, inventory[item] - quantity)
        end
    end

    return inventory
end

function remove_item(inventory, item)
    return delete!(inventory, item)
end

function list_inventory(inventory)
    return sort!([item => quantity for (item, quantity) in inventory if quantity > 0])
end
