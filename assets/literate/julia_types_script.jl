# This file was generated, do not modify it.

array = []
typeof(array)
array = [1, 2, 3]

array[1] = 12
array

array[1:2] = [23, 22]
array

array[2] = "test"

dict_A = Dict()
typeof(dict_A)

dict_A["test"] = 1
dict_A
dict_A["test"]

using InteractiveUtils # hide

methodswith(Matrix)

subtypes(AbstractMatrix)

using AbstractTrees

AbstractTrees.children(x::Type) = subtypes(x)
print_tree(AbstractMatrix)

using TypeTree

print(join(tt(AbstractMatrix), ""))

using Plots

plot(1:10, 1:10)

savefig(joinpath(@OUTPUT, "ISL-lab-2-mpg.svg")) # hide

