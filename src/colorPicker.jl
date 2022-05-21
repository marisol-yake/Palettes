#= 
colorPicker.jl

Simple color picker functions built in Julia.
=#

function random_HSV() :: HSV
    # Generates a random HSV object
    h = rand(0:360)
    s = rand(0:0.1:1)
    v = rand(0:0.1:1)
    return HSV(h, s, v)
end

function random_hue(hsv) :: HSV
    #=
    If there's an existing HSV object, modify it
    Or create a new HSV object with a randomized hue.
    =#
    if @isdefined hsv
        return HSV(rand(0:360), hsv.s, hsv.v)
    else
        return HSV(rand(0:360), 1.0, 1.0)
    end
end

function random_saturation(hsv) :: HSV
    #=
    If there's an existing HSV object, modify it
    Or create a new HSV object with a randomized saturation.
    =# 
    if @isdefined hsv
        return HSV(hsv.h, rand(0:0.1:1.0), hsv.v)
    else
        return HSV(0, rand(0:0.1:1.0), 1)
    end
end

function random_value(hsv) :: HSV
    #=
    If there's an existing HSV object, modify it
    Or create a new HSV object with a randomized value.
    =#
    if @isdefined hsv
        return HSV(hsv.h, hsv.s, rand(0:0.1:1.0))
    else
        return HSV(0, 1.0, rand(0:0.1:1.0))
    end
end

