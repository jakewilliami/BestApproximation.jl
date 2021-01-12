include(joinpath(dirname(@__DIR__), "src", "BestApproximation.jl"))
using Documenter, .BestApproximation

Documenter.makedocs(
    clean = true,
    doctest = true,
    modules = Module[BestApproximation],
    repo = "",
    highlightsig = true,
    sitename = "BestApproximation Documentation",
    expandfirst = [],
    pages = [
        "Home" => "index.md",
        "Usage" => "usage.md"
    ]
)

deploydocs(
    repo  =  "github.com/jakewilliami/BestApproximation.jl.git",
)
