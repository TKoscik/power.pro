# power.pro

Adjust variables according to power relationships (allometric scaling)

Method:
We fit a non-linear model, DV is the dependent varaiable(s) or variable(s) you want to adjust, and IV is the indepent variable or the variable whose power relationship with the DV you want removed.
```math
 DV = \alpha IV^\beta
```

Once estimates for $\alpha$ and $\beta$ have been found, these parameters are used to adjust your variable(s):
```math
DV'=\frac{DV}{IV^\beta}
```
