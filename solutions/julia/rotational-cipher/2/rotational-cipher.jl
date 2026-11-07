function rotate(n::Integer, c::Char)
    base = 'a' <= c <= 'z' ? 'a' : 'A' <= c <= 'Z' ? 'A' : return c

    return base + mod(c - base + n, 26)
end

rotate(n::Integer, str::AbstractString) = map(c -> rotate(n, c), str)


for n = 0:26
    @eval macro $(Symbol(:R, n, :_str))(s)
        rotate($n, s)
    end
end
