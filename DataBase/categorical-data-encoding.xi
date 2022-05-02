
  One Hot Encoder .
  . Is used for unordered (nominal data).
    Python Implementation .
    . Apply OneHotEncoder to some columns with categorical data.
    | from sklearn.compose import make_column_transformer
    | from sklearn.preprocessing import OneHotEncoder
    | column_trans = make_column_transformer(
    |   (OneHotEncoder(), ['Categorical Col1', 'Categorical Col2']),
    |   remainder = 'passthrough')
    |
    | column_trans.fit_transform(X)     # to actually transform dataframe

  Ordinal Encoder .
  . Is used for ordered (ordinal) data.