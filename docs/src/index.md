# Home

Given a potentially very large number, it is sometimes nice to approximate this.  To find the "best", or "nicest" approximation, usually we restrict the base of an exponent, so that your given number ``n`` is approximately ``b^x``.  The idea is that ``b^x`` is nicer looking than your input.  

This is a very small package exporting a function to find `b` and `x`, given a range `b` can be in.

## Contents
```@contents
```

```@meta
CurrentModule = BestApproximation
DocTestSetup = quote
    using BestApproximation
end
```

## Installing BestApproximation.jl
```@repl
using Pkg
Pkg.add("BestApproximation")
```

## Index
```@index
```
