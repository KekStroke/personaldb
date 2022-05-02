IQR @
Interquartile Range @
Midspread @
Middle 50% @
H-spread @

About IQR Score .
. measure of statistical `dispersion`, being equal to the
  `difference between 75th and 25th percentiles`, or
  `between upper and lower quartiles`
. IQR = Q3 - Q1.

Technical Details .
. Q1 is roughly +0.675σ in [Normal Distribution].
. Q1 is roughly -0.675σ in [Normal Distribution].
. IQR is roughly 1.35σ.
. So Q1 + 1.5 * IQR is roughly `2.7σ` and `values beyond` this
  threshold can be considered as an `outlier`.

Useful Formulas .
. Lower Bound = (Q1 - 1.5 * IQR)
. Upper Bound = (Q1 + 1.5 * IQR)