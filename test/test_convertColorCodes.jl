#=
Tests for convertColorCodes.jl
=#

@testset "convertColorCodes.jl" begin
    @testset "colorCodeConversion" begin
        # To HSV
        @test isa(hex_to_HSV("#000000"), HSV)
        @test hex_to_HSV("#000000") == HSV(0, 0, 0)

        @test isa(RGB_to_HSV(RGB(0, 0, 0)), HSV)
        @test RGB_to_HSV(RGB(0, 0, 0)) == HSV(0, 0, 0)

        # To RGB
        @test isa(hex_to_RGB("#000000"), RGB)
        @test hex_to_RGB("#000000") == RGB(0, 0, 0)

        @test isa(HSV_to_RGB(HSV(0, 0, 0)), RGB)
        @test HSV_to_RGB(HSV(0, 0, 0)) == RGB(0, 0, 0)

        # To Hex
        @test isa(HSV_to_hex(HSV(0, 0, 0)), String)
        @test HSV_to_hex(HSV(0, 0, 0)) == "#000000"

        @test isa(RGB_to_hex(RGB(0.1, 0.4, 0.9)), String)
        @test RGB_to_hex(RGB(0, 0, 0)) == "#000000"

    end
    
    @testset "colorCodeComputation" begin
        @test _hexslice_sum([10, 1]) == 161
        @test _hexslice_sum([0, 0]) == 0
        @test _hexslice_sum([15, 15]) == 255

        # hex = Dict(
        #     "A" => 10,
        #     "B" => 11, 
        #     "C" => 12, 
        #     "D" => 13, 
        #     "E" => 14, 
        #     "F" => 15
        # )
        # @testset "HexTests $k" for (k, v) in hex
        #     @test _char_to_int(k) == v
        # end

    end
end