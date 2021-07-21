# This file was generated, do not modify it. # hide
using AbstractTrees

AbstractTrees.children(x::Type) = subtypes(x)
print_tree(AbstractMatrix)