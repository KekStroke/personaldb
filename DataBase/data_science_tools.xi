Categories of Data Science Tools .

  Open Source Tools .

    Data Management .
    . Data Management is the process of persisting and
      retrieving data.
    
      Tools: .
      . Relational Databases:
        * MySql;
        * PostgresSQL.
      
      . NoSQL Databases:
        * MongoDB;
        * Apache CouchDB;
        * Apache Cassandra.
    
      . File Based Tools:
        * Hadoop File System.
        * Cloud File Systems:
        * Ceph.
        * Elasticsearch (for storing text data and creating
          search index for fast document retrieval).

    Data Integration and Transformation .
      . ETL - Extract, Transform and Load
      . It is the process of retrieving data from remote data
        management systems.
      . (Transforming data and loading it into a local data
        management system)
      
      Tools .
      * Apache Airflow;
      * Kubeflow;
      * Apache kafka;
      * APache nifi;
      * Spark SQL;
      * Node-RED.

    Data Visualization Tools .
      
      * HUE (visualizations from SQL queries);
      * kibana;
      * Apache Superset.

    Model Deployment .

      * PredictionIO;
      * SELDON;
      * Mleap;
      * TensorFlow.

    Model Monitoring and Assessment .
    . Ensures continuous performance quality checks on the
      deployed models.

      Tools .
      * ModelDB (DB where information about ML models is stored
        and can be queried);
      * Prometheus;
      * AI Fairness 360 Open Source Toolkit (detects biases in
        ML models);
      * Adversarial Robustness 360 Toolbox (detect vulnerability
        to adversarial attacks and help make the model more 
        robust);
      * AI Explainability 360 (explains how ML by finding 
        patterns).

    Code Asset Management .
    . Uses versioning and other collaborative features to
      facilitate teamwork.

      Tools .
      * git.

      * GitHub;
      * GitLab;
      * BitBucket.

    Data Asset Management .
    . Supports replication, backup and access right management.

      Tools .
      * Apache Atlas;
      * ODPi EGERIA;
      * Kylo.
      
    Development Environment .

      Tools .
      * Jupyter;
      * Jupyter lab;
      * Apache Zeppelin;
      * RStudio;
      * Spyder.

      Cluster Execution Environments .
      . Is used when data doesn't fit into a single computer's
        storage or main memory capacity.

      * Apache Spark (known for linear scalability; batch data
        processing of data file by file).
      * Apache Flink (streak processing image that processes
        real-time data streams).
      * riselab Ray.