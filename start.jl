#!/usr/bin/env julia

using Pkg

Pkg.add([
    "IJulia",
    "Interact",
    "WebIO",
    "Conda",
    "Plots",
    "DataFrames",
    "GR",
    "PlotlyJS",
    "BenchmarkTools",
]);

using IJulia
using Conda
Conda.pip_interop(true)
Conda.pip("install", "webio_jupyter_extension")
@info "If asked press [Enter]"
notebook(dir=".")

