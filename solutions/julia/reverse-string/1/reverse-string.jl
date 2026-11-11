# Uncomment the following line to enable the optional tests
const TEST_GRAPHEMES = true

using Unicode

function myreverse(str)
    return join(reverse(collect(graphemes(str))))
end
