About Data Mining .
. process of automatically searching, analyzing data, discover 
  insight and patterns.
. involves preprocessing data in transforming it to an appropriate
  format.
. Involves various tools and techniques like [Data Visualization], 
  [Machine Learning] and [Statistical Models]

Establishing Data Mining Goals .
. identify costs and benefits of the exercise.
. identify level of accuracy and usefulness from the results.
    Accuracy .
    . level of accuracy influences the costs.
    . high level of accuracy would cost more.
    . beyond certain level of accuracy final benefits stop growing.

Selecting Data .
. benefits of data mining highly depend on quality of data being used.
. type of data, size, frequency of collection directly affect costs.

Preprocessing Data .
. in preprocessing stage you identify irrelevant attributes of data and
  expel it from consideration.
. data should be checked on integrity.
    Missing data .
        Randomly Missing Data .
        . simple set of solutions.
        Systematically Missing Data .
        . determine impact of the missing data on the results.
        . can lead to systematic biases, so such data should be
          entierly or partially excluded from analysis.

Transforming Data .
. it is about determining the appropriate format to store the data.
. may require transforming data Data reduction algorithms, such as 
  [Principal Component Analysis] that can reduce number of attributes
  without significant loss in information.
. sometimes it is needed to transform variable from one type to another
  eg. from continuous data to categorical.

Storing Data .
. transformed data needs to be stored in a good format that allows
  to make basic operations like read and write convenient.
. store data at servers to prevent scattered data.
. data safety and privacy are primary concerns for storing data.

Mining Data .
. data that passed all preprocessing stages is a subject to data 
  mining.
. covers [Data Analysis Methods].
. good starting point is [Data Visualization].

Evaluating Mining Results .
. extracted results should be evaluated.
. could include testing the predictive capabilities of the models on 
  observed data to see how effective and efficient the algorithms have 
  been in reproducing data. [In-sample Forecast]
. allows to improve process that was initially a subject to improvement.
. becomes an iterative process to constantly improve quality of generated
  results and algorithms being used