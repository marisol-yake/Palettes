using Palettes
using Test


@testset "Palettes.jl" begin
    using Colors
    using ColorTypes
    using Random
    
    # Testsets
    include("../test/test_colorFamilies.jl")
    include("../test/test_colorPicker.jl")
    include("../test/test_convertColorCodes.jl")
end
