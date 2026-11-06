function get_coordinate(line)
    return line[2]
end

function convert_coordinate(coordinate)
    return Tuple(coordinate)
end

function compare_records(azara_record, rui_record)
    return convert_coordinate(get_coordinate(azara_record)) == rui_record[2]
end

function create_record(azara_record, rui_record)
    if !compare_records(azara_record, rui_record)
        return ()
    end

    treasure, coordinate = azara_record
    location, _, quadrant = rui_record

    return (coordinate, location, quadrant, treasure)
end
