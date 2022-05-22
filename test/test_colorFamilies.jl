#= 
Tests for colorFamilies.jl
=#

@testset "colorFamilies.jl" begin
    @testset "Pastel" begin
        # Pastel s30
        @test pastel_s30(HSV(235, 0.9, 1.0)) == HSV(235, 0.3, 1.0)
        @test pastel_s30(HSV(134, 0.7, 0.5)) == pastel_s30(HSV(134, 0.7, 0.5))
        @test isa(pastel_s30(HSV(1.0, 1.0, 1.0)), HSV)

        # Pastel s50
        @test pastel_s50(HSV(100, 0.3, 0.7)) == HSV(100, 0.5, 1.0)
        @test pastel_s50(HSV(190, 1.0, 1.0)) == pastel_s50(HSV(190, 1.0, 1.0))
        @test isa(pastel_s50(HSV(1.0, 1.0, 1.0)), HSV)
    end
end