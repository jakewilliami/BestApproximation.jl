include(joinpath(dirname(@__DIR__), "src", "BestApproximation.jl")); using .BestApproximation
using Test

@testset "BestApproximation.jl" begin
    @test best_approx(factorial(big(26)), 1:4) == (2, 88)
    @test best_approx(factorial(big(26)), 4) == (2, 88)
    @test best_approx(factorial(big(26)), 10) == (5, 38)
    @test best_approx(factorial(big(26)), 100) == (46, 16)
    @test best_approx(factorial(big(26)), 1000) == (904, 9)
    @test best_approx(factorial(big(26)), 10000) == (904, 9)
    @test best_approx(factorial(big(26)), 100000) == (27181, 6)
    @test best_approx(factorial(big(26)), 1000000) == (209470, 5)
    @test best_approx(1234567890, 94) == (5, 13)
    @test best_approx(12345678901234567890, 94) == (3, 40)
    @test best_approx(123456789012345678901234567890, 94878) == (70564, 6)
    @test best_approx(factorial(big(26)), 1:4, 1:100) == (2, 88)
    @test best_approx(factorial(big(26)), 4, 100) == (2, 88)
    @test best_approx(factorial(big(26)), 10, 100) == (5, 38)
end
