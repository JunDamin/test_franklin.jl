# This file was generated, do not modify it. # hide
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