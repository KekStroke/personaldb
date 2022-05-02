Basic functions .
  library() .
  . import built-in packages.
    Examples .
    | library(datasets)
    . imports package {datasets}.
  data() .
  . Loads specified data sets, or list the available data sets.
    Examples .
    | data(iris)
    . Loads iris dataset from {datasets}
  View() .
  . Invoke a spreadsheet-style data viewer on a matrix-like R object
    Examples .
    | View(iris)
  unique() .
  . returns a vector, data frame or array like {x } but with
    duplicate elements/rows removed.
    Examples .
    | unique(x)