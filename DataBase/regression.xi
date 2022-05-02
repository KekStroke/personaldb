Historical notes .
. A statistical technique that was developed by Sir Frances Galton.

About Regression .
. Used to predict a numeric or 'real' value.
. [Supervised learning] model.

  Linear Regression .
  . Fits the linear relationship between the dependent the the independent variables.

    Assumptions for a best-fit model .
    Linearity .
    . X and mean of Y should have linear relationship.
    Homoscedasticity .
    . Variance of [residual] is the same for any value of X.
    Independence .
    . Observations are independent of each other.
    Normality .
    . X, Y and [residual]s are normally distributed.

    Evaluation .
    . [R-Squared]
    . [Adjusted R-Squared]

    Programming Example .
    . To train model:
    | from sklearn.linear_model import LinearRegression
    | regressor = LinearRegression()
    | regressor.fit(X_train, y_train)

    . To make predictions:
    | y_pred = regressor.predict(X_test)