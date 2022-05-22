#= 
Tests for colorPicker.jl
=#

@testset "colorPicker.jl" begin
    @testset "randomColors" begin
        # Random HSV
        @test isa(HSV(50, 0.8, 0.8), HSV)

        # Random hue
        @test isa(random_hue(HSV(140, 0.1, 0.5)), HSV)

        # Random saturation
        @test isa(random_saturation(HSV(239, 0.5, 1.0)), HSV)

        # Random value
        @test isa(random_value(HSV(60, 0.7, 0.4)), HSV)
    end
end