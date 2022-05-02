Definition .
. Can be for multiple independent variables.
. Penalizes the model for using unnecessary independent variables.
. Uses [R-Squared].
. If the adjusted r-squared is very less than the [r-squared], then it can be believed that the model is not fitted properly because of the large number of independent variables

Python Implementation .
| from sklearn.metrics import r2_score
| r2 = r2_score(y_test, y_pred)
| adj = 1 - (
|            (1-r2)*(X_train.shape[0]-1)/
|             (X_train.shape[0]-X_train.shape[1]-1)
|           )