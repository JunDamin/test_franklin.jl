# ## What is Algebra of Graphics?

# ## Grammar of Graphics 
# 
# ### Why it is so popular?
# Good abstraction is a key to do complex thing easier.
#
# ## Why is it named algebra of graphics?
# I think one of the reason is that it metaphor the algebraic structure into graph.
# ### Rule 1. Addition is add new plot.
# ### Rule 2. Multiplication is update plot.



# Makie is one of the most useful plot library written in Julia.
# Julia is one of the most effective language.
# I want to compare three major plot libary in each language. 

import Pkg; Pkg.add(["AlgebraOfGraphics", "CairoMakie", "DataFrames", "LIBSVM", "PalmerPenguins"])


# ## Import data for examples
using PalmerPenguins, DataFrames

penguins = dropmissing(DataFrame(PalmerPenguins.load()))
first(penguins, 6)


# ## Start of it

using AlgebraOfGraphics, CairoMakie
set_aog_theme!()

axis = (width = 225, height = 225)
penguin_frequency = data(penguins) * frequency() * mapping(:species)

draw(penguin_frequency; axis)



fg = draw(penguin_frequency; axis)
save("figure.png", fg, px_per_unit = 3) # save high-resolution png


plt = penguin_frequency * mapping(color = :island)
draw(plt; axis)


plt = penguin_frequency * mapping(color = :island, dodge = :island)
draw(plt; axis)


plt = penguin_frequency * mapping(color = :island, stack = :island)
draw(plt; axis)



penguin_bill = data(penguins) * mapping(:bill_length_mm, :bill_depth_mm)
draw(penguin_bill; axis)


penguin_bill = data(penguins) * mapping(
    :bill_length_mm => (t -> t / 10) => "bill length (cm)",
    :bill_depth_mm => (t -> t / 10) => "bill depth (cm)",
)
draw(penguin_bill; axis)



plt = penguin_bill * mapping(color = :species)
draw(plt; axis)


plt = penguin_bill * linear() * mapping(color = :species)
draw(plt; axis)



plt = penguin_bill * linear() * mapping(color = :species) + penguin_bill * mapping(color = :species)
draw(plt; axis)



plt = penguin_bill * (linear() + mapping()) * mapping(color = :species)
draw(plt; axis)


layers = linear() + mapping()
plt = penguin_bill * layers * mapping(color = :species)
draw(plt; axis)


layers = linear() + mapping(marker = :sex)
plt = penguin_bill * layers * mapping(color = :species)
draw(plt; axis)


layers = linear() + mapping(col = :sex)
plt = penguin_bill * layers * mapping(color = :species)
draw(plt; axis)


using AlgebraOfGraphics: density
plt = penguin_bill * density(npoints=50) * mapping(col = :species)
draw(plt; axis)


plt *= visual(colormap = :grayC, colorrange = (0, 6))
draw(plt; axis)

axis = (type = Axis3, width = 300, height = 300)
layer = density() * visual(Wireframe, linewidth=0.05, specular=[3.5, 0.2, 0.1])
plt = penguin_bill * layer * mapping(color = :sex)
draw(plt; axis)



axis = (width = 225, height = 225)
layer = density() * visual(Contour)
plt = penguin_bill * layer * mapping(color = :species)
draw(plt; axis)




layers = density() * visual(Contour) + linear() + mapping()
plt = penguin_bill * layers * mapping(color = :species)
draw(plt; axis)


layers = density() * visual(Contour) + linear() + visual(alpha = 0.5)
plt = penguin_bill * layers * mapping(color = :species)
draw(plt; axis)


body_mass = :body_mass_g => (t -> t / 1000) => "body mass (kg)"
layers = linear() * mapping(group = :species) + mapping(color = body_mass, marker = :species)
plt = penguin_bill * layers
draw(plt; axis)


axis = (type = Axis3, width = 300, height = 300)
plt = penguin_bill * mapping(body_mass, color = :species)
draw(plt; axis)

plt = penguin_bill*mapping(body_mass, color=:species, layout=:sex)
draw(plt;axis)


# using machine learning

using LIBSVM, Random

Random.seed!(1234)
N = nrow(penguins)
train = fill(false, N)
perm = randperm(N)
train_idx = perm[1:floor(Int, 0.8N)]
train[train_idx] .= true

# fit model on training data and make predictions on the whole data
X = hcat(penguins.bill_length_mm, penguins.bill_depth_mm)
y = penguins.species
model = SVC()
fit!(model, X[train, :], y[train])
ŷ = predict(model, X)

# incorporate relevant information in the dataset
penguins.train = train
penguins.predicted_species = ŷ

axis = (width=225, height = 225)
dataset =:train => renamer(true=>"training", false=>"testing")
accuracy = (:species, :predicted_species) => isequal => "accuracy"

plt = data(penguins)* 
      expectation() *
      mapping(:species, accuracy) * 
      mapping(col = dataset)
draw(plt; axis)

error_rate = (:species, :predicted_species) => !isequal => "error rate"
plt = data(penguins) *
    expectation() *
    mapping(:species, error_rate) *
    mapping(col=dataset)
draw(plt; axis)

prediction = :predicted_species => "predicted species"
datalayer = mapping(color=prediction, row=:species, col=dataset)
plt = penguin_bill*datalayer
draw(plt; axis)

pdflayer = density()*visual(Contour, colormap=Reverse(:greys)) * mapping(group = :species)
layers = pdflayer + datalayer
plt = penguin_bill*layers
draw(plt; axis)