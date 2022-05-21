#=
colorFamilies.jl

Julia functions for from converting HSV values to different Color Families.
    For example:

        Pastels - pastel_s50, pastel_s30

=#

# Pastel Colors
function pastel_s50(hsv)
    return HSV(hsv.h, 0.5, 1.0)
end

function pastel_s30(hsv)
    return HSV(hsv.h, 0.3, 1.0)
end