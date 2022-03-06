About Scikit-Learn .
. [Python]'s core machine learning package that has most
  of the necessary modules to support a basic machine 
  learning project.
. Provides unified [API] for practitioners to ease the use of
  machine learning algorithms with only writing a few lines
  to accomplish the predictive of classification task.
  
  Project vision .
  . `Code quality` and `proper documentation` for core vision.
  . Robust implementation is in hight priority.
  ! `Does not provide any GPU support`.
  ! Does not provide any [data visualization] tools.
  . It is not a structured learning and prediction package.
    (see [pystruct], [seqlearn] instead).
  . It is not a [NLP] package (see [NLTK] and [Gensim] instead).
  . In is not a basic statistics package (see [statsmodel] instead).

Languages Written in .
. Written heavily in Python
. Incorporates C++ libraries like [LibSVM] and [LibLinear]

Dependent Packages .
. [Pandas]  (mainly for the dataframe processes).
. [Numpy]   (for the [Numpy# ndarray] construct).
. [Scipy]   (for sparse matrices).

Estimator .
. Estimator is an essential element in the package.
? Estimator is an object that `fits a model` based on the
  input data (i.e training data) and performs specific
  calculations that correspond to properties on new, unseen
  data.
. In other words, an estimator can be a |regressor| or a 
  |classifier|.
? All modules in package support estimator.

Useful Resources .
. [https://scikit-learn.org/stable/user_guide.html]
. [https://miro.medium.com/max/1050/1*VI3C1hMwAjSazcMU4X4mtw.jpeg], 
  [https://miro.medium.com/max/1050/1*pm5O1NE07Yuo6U4XSs2Cjw.jpeg]
  (2 parts).