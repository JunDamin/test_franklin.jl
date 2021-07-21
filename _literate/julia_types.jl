# # Julia's Types

# One of the Julia's key features is based on its type system.
# You can create and commpute with custom types without any overhead.

# How ever you need to understand the basic types of Julia to composite it.

# ## Types

# We can think about CRUD for each types.

# ### Array

# #### create an Array 
# how to create an array? you can just create one. with `[]`
# one thing you need to remember is one demension array is just a vector
array = []
typeof(array)
array = [1, 2, 3]

# #### read
# read is just like the python.

# #### update
# you can modify it with index.
array[1] = 12
array
# you also asign value with same size of vector.
array[1:2] = [23, 22]
array

# But one thing you need to remember, 
# unlikely list in python, one it has its type, and then it should get certain type of input.
array[2] = "test"

# ### Dictionary
# Dictionary is just like the one in python. But you need to use Dict() not {}.

dict_A = Dict()
typeof(dict_A)

dict_A["test"] = 1
dict_A
dict_A["test"]
# ### Vector

# ### Matrix

# ### DataFrame?

# ### UnitRange

# ## QnA

# ### How can I find the mathods of the type?

# You can use `methodswith` function to find methods.

using InteractiveUtils # hide

methodswith(Matrix)

# ### How can I see the type hierachy?

# You can use `subtypes` function to see subtypes.

subtypes(AbstractMatrix)

# You can define your custom function to display the whole type structure.

# Also, there are some useful packages to produce type structures.

# One of the packages is `AbstractTrees`

using AbstractTrees

AbstractTrees.children(x::Type) = subtypes(x)
print_tree(AbstractMatrix)

# or you can use `TypeTree` package.

using TypeTree

print(join(tt(AbstractMatrix), ""))

# test plots

using Plots

plot(1:10, 1:10)

savefig(joinpath(@OUTPUT, "ISL-lab-2-mpg.svg")) # hide

# \figalt{Simple plot}{ISL-lab-2-mpg.svg}
