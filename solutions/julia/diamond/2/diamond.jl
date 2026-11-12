function rows(letter)
    target = first(letter)
    half = target - 'A'
    size = 2 * half + 1
    mid = half + 1

    result = Vector{String}(undef, size)
    buf = fill(UInt8(' '), size)

    for ch = 'A':target
        offset = ch - 'A'
        left = mid - offset
        right = mid + offset

        char = UInt8(ch)
        buf[left] = char
        buf[right] = char

        row_str = String(copy(buf))
        result[1+offset] = row_str
        result[size-offset] = row_str

        #buf[left] = UInt8(' ')
        #buf[right] = UInt8(' ')
    end

    return result
end
