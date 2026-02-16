using Documenter
using NetworkDynamic

DocMeta.setdocmeta!(NetworkDynamic, :DocTestSetup, :(using NetworkDynamic); recursive=true)

makedocs(
    sitename = "NetworkDynamic.jl",
    modules = [NetworkDynamic],
    authors = "Statistical Network Analysis with Julia",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
        canonical = "https://Statistical-network-analysis-with-Julia.github.io/NetworkDynamic.jl",
        edit_link = "main",
    ),
    repo = "https://github.com/Statistical-network-analysis-with-Julia/NetworkDynamic.jl/blob/{commit}{path}#{line}",
    pages = [
        "Home" => "index.md",
        "Getting Started" => "getting_started.md",
        "User Guide" => [
            "Dynamic Networks" => "guide/dynamic_networks.md",
            "Spells and Activity" => "guide/spells.md",
            "Time Queries" => "guide/queries.md",
        ],
        "API Reference" => [
            "Types" => "api/types.md",
            "Functions" => "api/functions.md",
        ],
    ],
    warnonly = [:missing_docs, :docs_block],
)

deploydocs(
    repo = "github.com/Statistical-network-analysis-with-Julia/NetworkDynamic.jl.git",
    devbranch = "main",
    versions = [
        "stable" => "dev",
        "dev" => "dev",
    ],
    push_preview = true,
)
