module BestApproximation

export best_approx

@doc raw"""
```julia
best_approx(n::Number, R::AbstractRange)
best_approx(n::Number, R_max::Integer)
```

For a given number ``n``, given a range ``R``, finds the "nicest" solution of ``m`` such that

```math
r^m \approx n \text{ for } r \in R.
```

Returns `(r, m)` as a tuple.

Given an integer ``R_{\text{max}}`` it will assume the range between ``R = \left\lbrack 1, R_{\text{max}}\right\rbrack``.
"""
function best_approx(n::Number, R::AbstractRange)
    n, res = big(n), (0, 0)
    for i in R
        j = round(Integer, log(i, n))
        difference = (n - big(i)^(j))
        if (difference > 0) && (difference < (n - big(first(res))^(last(res))))
            res = (i, j)
        end
    end
    
    return res
end
best_approx(n::Number, R_max::Integer) = best_approx(n, 1:R_max)

@doc raw"""
```julia
best_approx(n::Number, I::AbstractRange, J::AbstractRange)
best_approx(n::Number, I_max::Integer, J::Integer)
```

For a given number ``n``, given two ranges ``I`` and ``J``, finds the nicest solution such that

```math
i^j \approx n \text{ for } i \in I, j \in j.
```

Returns `(i, j)` as a tuple.

Given integers ``I_{\text{max}}`` and ``J_{\text{max}}`` it will assume the ranges between ``I =  \left\lbrack 1, I_{\text{max}}\right\rbrack`` and ``J =  \left\lbrack 1, J_{\text{max}}\right\rbrack``.

!!! note

    This is a much slower variant than the other method for `best_approx`.  It is recommended that you use the "cleverer" method unless you need to constrict the exponent.
"""
function best_approx(n::Number, I::AbstractRange, J::AbstractRange)
    n, res = big(n), (0, 0)
    for i in I, j in J
        difference = (n - big(i)^(j))
        if (difference > 0) && (difference < (n - big(first(res))^(last(res))))
            res = (i, j)
        end
    end
    
    return res
end
best_approx(n::Number, I_max::Integer, J_max::Integer) = best_approx(n, 1:I_max, 1:J_max)

end
