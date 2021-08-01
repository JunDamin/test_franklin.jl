# Types of Julia

For any programming languages, data types are one of the key pillars to code programs.
Therefore, to understand its data types are very important to use a language.

Basically, Julia is a generic programming language, which simply means it can build a function without specific data type. You can write an algorithm in Julia without any type infomation on it. It may sound like it is not need to learn about data types. However, it just means that you can decide data type later. On execution stage, Julia compiler infer the proper types and find proper functions for it. It is called multiple dispatch and this design pattern, perhaps, the most important advantages of Julia.

In Julia, you can composite your custom type and it works just like the primitive types. I think it empower users to focus on readability and logic for flexibility.

It is also important to mention that 

There are some important type in Julia.

To define custom vector or Matrix, you only need to define some functions for your custom type.

\literate{/_literate/julia_types.jl}