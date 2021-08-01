# This file was generated, do not modify it.

using VegaDatasets
data = dataset("iris")
print(data)

# Plot data

using VegaLite
p = data |> @vlplot(:point, x=:sepalLength, y=:sepalWidth, color=:species)

save(joinpath(@OUTPUT, "plot.svg"), p)  # hide

p = data |>
    @vlplot(
        repeat={
            row=[:sepalLength,:sepalWidth,:petalLength, :petalWidth],
            column=[:sepalLength,:sepalWidth,:petalLength, :petalWidth]
        }
    ) +
    @vlplot(
        :point,
        x={field={repeat=:column}, type=:quantitative},
        y={field={repeat=:row}, type=:quantitative},
        color={field=:species},
    )

save(joinpath(@OUTPUT, "plot2.svg"), p)  # hide

