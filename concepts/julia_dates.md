# Dates in Julia

## TimeZones.jl

you can use specifying timezone by `str_macro`.

```julia:.tz1
using ZonedDate
tz"UTC" == @tz_str "UTC"
```

\output{.tz1}

also you can use timezone type.

```julia:.tz2
TimeZone(a) == tz"UTC"
```

\output{.tz2}

I personally, Julia's data processing library is not mature enough especially when you work with datetime. It would be btter use python for pre-processing.

With Julia, it is really hard to do.