# ## Read Data

# you can read data using vega dataset

using VegaDatasets
data = dataset("iris")
print(data)

## Plot data

# using graph, it become much easier to find pattern from data.

# You can plot using VegaLite.
# In Julia, `:` means symbolifying such as `:sepalLength` which is not variable, it is a name of variable.(I am sure but it seems to work like a pointer.)

using VegaLite
p = data |> @vlplot(:point, x=:sepalLength, y=:sepalWidth, color=:species) 

save(joinpath(@OUTPUT, "plot.svg"), p)  # hide

# \fig{plot}

# Plotting pairs is much easier because you can see all data at once.

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

# \fig{plot2}

# From the graph above, you can see 'Setosa' is pretty easy to identify but 'versicolor' and 'virginica' are overlapped.

# You can do all the process much easier with "DataVoyager".