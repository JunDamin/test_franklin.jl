[1] \(L::SuiteSparse.CHOLMOD.FactorComponent, B::Matrix{T} where T) in SuiteSparse.CHOLMOD at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/SuiteSparse/src/cholmod.jl:1692
[2] tr(A::Matrix{T}) where T in LinearAlgebra at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/LinearAlgebra/src/dense.jl:332
[3] tril(M::Matrix{T} where T, k::Integer) in LinearAlgebra at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/LinearAlgebra/src/dense.jl:181
[4] triu(M::Matrix{T} where T, k::Integer) in LinearAlgebra at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/LinearAlgebra/src/dense.jl:144
[5] similar(a::Matrix{T}) where T in Base at array.jl:354
[6] similar(a::Matrix{T}, S::Type) where T in Base at array.jl:356
[7] setindex!(A::Matrix{T} where T, x::SparseArrays.AbstractSparseMatrixCSC, I::Integer, J::AbstractVector{Bool}) in SparseArrays at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/SparseArrays/src/sparsematrix.jl:2923
[8] setindex!(A::Matrix{T} where T, x::SparseArrays.AbstractSparseMatrixCSC, I::AbstractVector{Bool}, J::Integer) in SparseArrays at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/SparseArrays/src/sparsematrix.jl:2924
[9] setindex!(A::Matrix{T} where T, x::SparseArrays.AbstractSparseMatrixCSC, I::AbstractVector{Bool}, J::AbstractVector{Bool}) in SparseArrays at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/SparseArrays/src/sparsematrix.jl:2925
[10] setindex!(A::Matrix{T} where T, x::SparseArrays.AbstractSparseMatrixCSC, I::AbstractVector{var"#s832"} where var"#s832"<:Integer, J::AbstractVector{Bool}) in SparseArrays at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/SparseArrays/src/sparsematrix.jl:2926
[11] setindex!(A::Matrix{T} where T, x::SparseArrays.AbstractSparseMatrixCSC, I::AbstractVector{Bool}, J::AbstractVector{var"#s832"} where var"#s832"<:Integer) in SparseArrays at /opt/hostedtoolcache/julia/1.6.2/x64/share/julia/stdlib/v1.6/SparseArrays/src/sparsematrix.jl:2927
[12] size(a::Matrix{T} where T) in Base at array.jl:134