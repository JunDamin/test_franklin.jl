+++
title = "Code blocks"
hascode = true
date = Date(2019, 3, 22)
rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"
+++
@def tags = ["syntax", "voyager"]

# Iris Data Analysis

## Read Data

you can read data using vega dataset

```julia:.iris_read
using VegaDatasets
data = dataset("iris")
print(data)
```
\output{.iris_read}

## Plot data

using graph, it become much easier to find pattern from data.

You can plot using VegaLite.
In Julia, `:` means symbolifying such as `:sepalLength` which is not variable, it is a name of variable.(I am sure but it seems to work like a pointer.)

```julia:.code1
using VegaLite
p = data |> @vlplot(:point, x=:sepalLength, y=:sepalWidth, color=:species) 

save(joinpath(@OUTPUT, "plot.svg"), p)  # hide
```
\fig{plot}

Plotting pairs is much easier because you can see all data at once.

```julia:.code2
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
```
\fig{plot2}

From the graph above, you can see 'Setosa' is pretty easy to identify but 'versicolor' and 'virginica' are overlapped.

You can do all the process much easier with "DataVoyager".
