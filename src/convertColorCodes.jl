#=
Color Family Functions

Functions that manipulate the HSVA values of a given Hue
returning a new color belonging to a specific color family.
=#

# Convert between ColorTypes aka "Color codes": (RGB, hex, HSV)

function _hexslice_sum(hexslice) :: Int
    "Takes a hex slice (substring of hex code) and outputs the corresponding RGB integer value."
    return (hexslice[1] * 16) + hexslice[2]
end

function _char_to_int(char_)
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

#############################################################
# Color Conversion Functions
#############################################################
# To HSV
function hex_to_HSV(hex::String) :: HSV
    rgb = hex_to_RGB(hex)
    return convert(HSV, rgb)
end

function RGB_to_HSV(rgb::RGB) :: HSV
    convert(HSV, rgb)
end

# From HSV
function HSV_to_hex(hsv::HSV) :: String
    return "#$(hex(hsv))"
end

function HSV_to_RGB(hsv::HSV) :: RGB
    convert(RGB, hsv)
end


function RGB_to_hex(rgb::RGB) :: String
    return "#$(hex(rgb))"
end

function hex_to_RGB(hex::String) :: RGB
    if occursin("#", hex)
        hex = replace(hex, "#" => "")
    end
    
    r_slice = split(hex[1:2], "")
    g_slice = split(hex[3:4], "")
    b_slice = split(hex[5:6], "")

    r = _hexslice_sum(_char_to_int.(r_slice)) / 255
    g = _hexslice_sum(_char_to_int.(g_slice)) / 255
    b = _hexslice_sum(_char_to_int.(b_slice)) / 255

    return RGB(r, g, b)
end