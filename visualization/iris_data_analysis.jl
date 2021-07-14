using VegaDatasets, VegaLite, DataVoyager

# load dataset
data = dataset("iris")

# display dataset
vscodedisplay(data)

# visualize dataset
v = Voyager(data)

# specify plot in DataVoyager before procedding

# assign specified plot to a variable.

p = v[]

data |> 
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


dataset("cars") |>
    @vlplot(
        repeat={
            row=[:Horsepower, :Acceleration, :Miles_per_Gallon],
            column=[:Miles_per_Gallon, :Acceleration, :Horsepower]
        }
    ) +
    @vlplot(
        :point,
        x={field={repeat=:column}, type=:quantitative},
        y={field={repeat=:row}, type=:quantitative},
    )

vscodedisplay(dataset("cars"))