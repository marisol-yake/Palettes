#=
Color Family Functions

Functions that manipulate the HSVA values of a given Hue
returning a new color belonging to a specific color family.
=#

# Convert between ColorTypes aka "Color codes": (RGB, hex, HSV)


function _hexslice_to_int(hexslice) :: Int
    "Takes a hex slice (substring of hex code) and outputs the corresponding RGB integer value."
    return (hexslice[1] * 16) + hexslice[2]
end

function _char_to_int(char_) :: Int
    "Takes a character from a hex slice (substring of hex code) and returns a corresponding integer."
    hex_dct = Dict(
        "A" => 10, 
        "B" => 11, 
        "C" => 12, 
        "D" => 13, 
        "E" => 14, 
        "F" => 15
    )
    if haskey(hex_dct, char_)
        return hex_dct[char_]
    else
        return parse(Int, char_)
    end
end

function hex_to_RGB(hex) :: RGB{Float}
    if occursin("#", hex)
        hex = replace(hex, "#" => "")
    end
    
    r_slice = split(hex[1:2], "")
    g_slice = split(hex[3:4], "")
    b_slice = split(hex[5:6], "")

    r = _hexslice_to_int(_char_to_int.(r_slice)) / 255
    g = _hexslice_to_int(_char_to_int.(g_slice)) / 255
    b = _hexslice_to_int(_char_to_int.(b_slice)) / 255

    return RGB(r, g, b)
end

# To HSV
function hex_to_HSV(hex) :: HSV
    rgb = hex_to_RGB(hex)
    return convert(HSV, rgb)
end

function RGB_to_HSV(rgb) :: HSV
    convert(HSV, rgb)
end

# From HSV
function HSV_to_hex(hsv)
    return "#$(hex(hsv))"
end

function HSV_to_RGB(hsv) :: RGB
    convert(RGB, hsv)
end