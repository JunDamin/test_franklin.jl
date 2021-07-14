# This file was generated, do not modify it. # hide
using VegaLite
p = data |> @vlplot(:point, x=:sepalLength, y=:sepalWidth, color=:species) 

save(joinpath(@OUTPUT, "plot.svg"), p)  # hide