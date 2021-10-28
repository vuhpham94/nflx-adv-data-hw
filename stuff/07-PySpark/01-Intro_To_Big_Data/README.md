# 7.1 Lesson Plan: Intro to Big Data

## Lesson Overview

In this class, you'll introduce students to big data technologies. The students will first learn how to identify pieces of the Hadoop ecosystem. They will then learn how to write Python scripts that implement a MapReduce programming model. Next, they'll learn the difference between Hadoop and Spark environments, and finally, they will learn how to create a DataFrame using PySpark.

## Class Objectives
By the end of class, students will be able to:

- Identify the pieces of the Hadoop ecosystem.
- Write a Python script that implements a MapReduce programming model.
- Identify the differences between Hadoop and Spark environments.
- Create a DataFrame in PySpark.

## Class Outline

| | Topic | Time |
| -- | -- | -- |
| 1. | [Intro to Big Data](#Section1) | 10 Mins |
| 2. | [MapReduce with MRJob](#Section2) | 25 Mins |
| 3. | [MRJob with Python](#Section3) | 35 Mins |
| 4. | [Break](#Section4) | 10 Mins |
| 5. | [Spark Overview and Google Colab Setup](#Section5) | 25 Mins |
| 6. | [PySpark DataFrames](#Section6) | 55 Mins |
| 7. | [Review, Recap, & End Class](#Section7) | 20 Mins |

> Total Time: 180 Mins

---

## Instructor Prep
<details>
  <summary><strong>⭐ Getting Started</strong></summary>

* During this lesson, we will primarily focus on familiarizing students with MapReduce, Hadoop, and Spark. We will cover basic MapReduce concepts, and students will have an opportunity to write a Python script that implements MapReduce. Students will also get set up with Spark, and learn how to create a DataFrame with PySpark.

* This week's lessons are intended to help students understand the basics of PySpark and to prepare them for next week, where we will cover SparkSQL and Optimization.

* Given that MapReduce and Spark are newer concepts, students may struggle with some of the setup and basic functions. Feel free to spend extra time as needed, where you see fit.

</details>

---

## Slideshow

The lesson slides for this document are available on Google Drive here: [7.1 Slides](https://docs.google.com/presentation/d/12CKa06EqPRJ-_gryD28kQH6W64qNJq8qdKM042LzICk/edit). 

---

## Class Activities

### 1. <a name="Section1"></a> Intro to Big Data

 | Activity Time:       0:10 |  Elapsed Time:      0:10  |
 |---------------------------|---------------------------|

 <details>
   <summary><strong>📣 1.1 Instructor Do: Intro to Big Data (0:10)</strong></summary>
   <br>

In this section, students will learn more about big data. We will cover: what big data actually is and how big it is, the four Vs of big data, and what technology we'll specifically use to process big data. Students may use some of these skills in their careers, so it's important that they understand all of these basics. Today's class will cover a few of the most popular big data technologies, including Hadoop (MRJob) and Spark (PySpark).

Introduce big data by walking through the following key points:

* **Big data** is an umbrella term that covers many technologies and processes.

* Big data can be anything.

  * There have always been large datasets. Big data refers to the practice of working with those datasets using distributed means. Typically, datasets used in this way are very large.

  * Since large datasets have always been around, there have been other, less efficient ways of processing data. But Hadoop, a tool for processing large datasets that we'll learn about today, really was a leap forward.

* How big *is* big data?

  * There is no hard and fast rule. Generally, a dataset is considered big data when it is too large for an operational database. 

  * Because there is no clear line between big data and a regular dataset, it is sometimes hard to identify the right tools for the job.

    * Generally you can't use the _wrong_ tool for the job in big data. But it may be unnecessary to use a tool like MapReduce or Spark when you only need to process a few lines of data. 

    * These systems can process much, much bigger data.

    * So, using a tool like Spark or Hadoop might be extreme for a specific job. Some employers may want you to use Spark because it is a great tool, but it isn't necessarily the best tool for the job if there is only a small amount of data.

* Explain the four Vs of big data:

  * **Volume:** The size of the data.

  * **Velocity:** How quickly the data comes in.

  * **Variety:** The diversity of data.

  * **Veracity:** The uncertainty of data.

* Share with students what technologies we can use when dealing with big data:

  * There are several, but Hadoop is one technology commonly used to process big data.

  * **Hadoop** is an open source framework for big data. It consists of a number of components. Explain the following Hadoop components:

    * The **Hadoop Distributed File System**, or **HDFS**, enables the storing of large quantities of data across multiple servers efficiently and cheaply, while minimizing the risk of data loss.

    * **Hive** is an SQL-like query tool for big data.

    * **MapReduce** distributes large data tasks across multiple servers and then assembles the results.

      * For an analogy of MapReduce, imagine that you want to know how many books a library contains. You could divide this problem into two tasks: Counting the books, which would be the mapping part. Then, tallying all the results, which is the reducing part.

    * There are several other components of Hadoop, too. Reiterate for students that Hadoop is a suite of tools designed to meet the challenges of processing large amounts of data.

Explain to students that they will practice these skills in the activities to come.

 </details>

---

### 2. <a name="Section2"></a> MapReduce with MRJob

 | Activity Time:       0:25 |  Elapsed Time:      0:35  |
 |---------------------------|---------------------------|

<details>
  <summary><strong>📣 2.1 Instructor Do: Intro to MapReduce with MRJob (0:05)</strong></summary>
<br>

In the previous section, students learned more about what big data actually is. In this set of activities, we will take a deeper dive into MapReduce. Although Spark is typically a more popular choice, students may use MapReduce in their careers. It is important for them to understand the context and the role MapReduce plays in big data.

Introduce MapReduce and MRJob by explaining the following:

* We will take our first dip into the vast ocean that is big data through MRJob, a Python library that lets users prototype MapReduce jobs locally.

* Explain to students what a MapReduce job is and what it is used for:

  * MapReduce was created by Google with the initial purpose of indexing all information on the internet. Now, MapReduce is used as a means for distributing and processing the data on your cluster. Put simply, a MapReduce process will map the data at the node and reduce it based on the logic. 

* **Mapping** means splitting up data and preprocessing it, and then converting the data into key-value pairs.

* **Reducing** means aggregating the results.

* Share with students an example use case for MapReduce:

  * Imagine that our organization collects temperature data for every large city in the USA, every day of the year. This implies that, for a given year, we'll have 365 files, each of which contains a list of temperatures for each city. The city temperature data forms a key-value pair. 

Explain to students that they will explore MapReduce use cases in the next activity.

</details>

<details>
  <summary><strong>✏️ 2.2 Student Do: MapReduce Use Cases (15 Mins)</strong></summary>
<br>

In this activity, students will find common use cases of MapReduce. Being able to research and learn about other common use cases is an important skill to have in their careers.

**Files:**

  * [Activity Instructions](Activities/01-Stu_MapReduceUseCases/README.md)

**Instructions:**

1. Using Google, search for popular use cases of MapReduce. Be prepared to share you answers with the class. 


</details>

<details>
  <summary><strong>⭐ 2.3 Review: MapReduce Use Cases (0:05)</strong></summary>
<br>

Open the solution, [README.md](Activities/01-Stu_MapReduceUseCases/Solved/README.md), and share some of the possible use cases of MapReduce with students.

* Make sure to cover the following:

  * Ask students what use cases they found.

  * Talk about the use cases provided in the solution file.

  * Answer any questions that may come up.

</details>

---

### 3. <a name="Section3"></a> MRJob with Python

 | Activity Time:       0:35 |  Elapsed Time:      1:10  |
 |---------------------------|---------------------------|

<details>
  <summary><strong>📣 3.1 Instructor Do: Snow in Austin (0:15)</strong></summary>
<br>

In the previous activity, students learned more about the real-life use cases for MapReduce. In this next section, students will learn how to implement MapReduce using MRJob. Though PySpark tends to be more popular in the data engineering and data science field, it's important to have the context of MapReduce and how to implement it. 

Introduce MRJob and this MapReduce demonstration by sharing the following:

  * In this demo, we'll use MRJob with a CSV file to count the number of hot days in Austin.

  * Remind students that MapReduce is intended to distribute and process large data files.

  * MRJob is a Python package that allows us to test our MapReduce code locally on our own computers. 

  * MapReduce code is often referred to as MapReduce jobs. 

#### MRJob Demonstration

Start by opening the [hot.py](Activities/02-Evr_MrJob_CSV/Solved/hot.py) file. Walk students through the code using the instructions below. 

1. Open the [austin_weather_2017.csv](Activities/02-Evr_MrJob_CSV/Resources/austin_weather_2017.csv) file and provide it to students so that they can look at the data and follow along on their own computer. 

2. After opening and sharing the data file with students, import the `MRJob` class.

3. Create a class, `Hot_days`, which inherits the `MrJob` class.

4. Since the file is a CSV, split the line on "," and save the values in the array to the variables `station, name, state, date, snow, tmax, tmin`.

5. We only want to track days when the temperature was greater than or equal to 100 degrees.

6. Since some lines of data don't have a value for `tmax`, we need to ensure that its value is not "none" in the conditional. 

    * The `tmax` value is read in as a string and must be converted to an integer before we can compare it with 100.

    * If `tmax` passes the conditional, yield the name of the station where the temperature was recorded and 1. 

7. Use the `reducer` function to aggregate the sum of days in which it was over 100 degrees for each location. 
Mention to students that they will practice using MapReduce and MRJob in the next activity.

</details>

<details>
  <summary><strong>✏️ 3.2 Student Do: Snow in Austin (0:15)</strong></summary>
<br>

In the previous demonstration, students learned how to use MapReduce and locally test their MapReduce jobs using MRJob. In this activity, students will practice this skill by creating a MapReduce job that lists the days in which it snowed in Austin, Texas. It is important for students to understand how to write a MapReduce job, as they may need to write or modify MapReduce jobs throughout their careers. 

**Files:**

  * [Activity Instructions](Activities/03-Stu_Austin_Snow/README.md)

  * [austin_weather_2017.csv](Activities/03-Stu_Austin_Snow/Resources/austin_weather_2017.csv)

**Instructions:**

1. Start by looking over the `austin_weather_2017.csv` file.

2. Next, import MRJob.

3. After importing MRJob, create a new class, which will contain your mapper and reducer.

4. Create mapper and reducer functions that return the days in which it snowed in Austin, Texas. 

5. **Bonus:** Find the maximum amount of snow per date.

</details>

<details>
  <summary><strong>⭐ 3.3 Review: Snow in Austin (0:05)</strong></summary>
<br>

Open [snow.py](Activities/03-Stu_Austin_Snow/Solved/snow.py) and walk through the solution line by line, while answering any questions that come up.

* Make sure to cover the following points when reviewing this activity:

  * Ask for student volunteers to describe each part of the code.

  * In the mapper, split on "," and save to respective variables.

  * The `if` statement checks for data in the `snow` variable, converts it to a float, and checks to see if the value is over 0.

  * If the value is over 0, the mapper yields the date and 1.

  * The reducer should yield the date and the max from the list of 1s. This way, we produce only one date with a 1. If we used `sum`, we would return all dates with a number representing how many stations recorded snow data on that date.

  * Answer any remaining questions about MapReduce, MRJob, or this activity.

* Go over the bonus solution as well: [bonus.py](Activities/03-Stu_Austin_Snow/Solved/bonus.py)

  * This time, we yield the date and the amount of snow from the mapper.

  * When the reducer yields `max(snow)`, it finds the max amount of snow on that date.

  * Spark uses lazy evaluation, which delays the evaluation of an expression until an "action" is called. 

</details>

---

### 4. <a name="Section4"></a> Break

 | Activity Time:       0:10 |  Elapsed Time:      1:20  |
 |---------------------------|---------------------------|

---

### 5. <a name="Section5"></a> Spark Overview and Google Colab Setup

 | Activity Time:       0:25 |  Elapsed Time:      1:45  |
 |---------------------------|---------------------------|

 <details>
   <summary><strong>📣 5.1 Instructor Do: Spark Overview (0:10)</strong></summary>
<br>

In the previous set of activities, students learned more about MapReduce and MRJob. In this set of activities, students will learn about Spark and how to set themselves up in Google Colab. First, let's take a look at Spark's background, and why it was developed.

Introduce **Spark** by explaining the following:

  * While MapReduce was an amazing leap forward for handling massive amounts of data, it was still slow. The AMPLab group at UC Berkeley came up with the idea to store data in Resilient Distributed Datasets (RDDs), and use memory instead of disk. This improved speed by 100x. 

    * While it was developed by AMPLab, Spark was later donated to the Apache Software Foundation, where it is now maintained. This is why you might hear it called Apache Spark. Note that Hadoop is owned by the same foundation, so you might also hear Apache Hadoop.

  * As Spark evolved to its current version, 3.x, the direct use of RDDs was simplified by using DataSets and DataFrames. 

  * Spark can be programmed in Scala, Python, Java, R, and SQL. It has a rich ecosystem, and is very scalable.

  * Spark uses in-memory computation instead of a disk-based solution, which means it has limited need to read or write data from disks.

  * There are two other components to Spark: Spark SQL and Spark Streaming. We'll learn more about Spark SQL in future lessons.

 </details>

 <details>
   <summary><strong>✏️ 5.2 Everyone Do: Set Up Google Colab (0:15)</strong></summary>
<br>

In the previous section, students learned about Spark's origins. Now, we will get students set up on Google Colab, so that they can begin to program Spark code. While students may not always use Google Colab for their work environment, it is a great place to practice.

Introduce Google Colab by covering the following:

* **Google Colaboratory**, or **Google Colab**, is a tool that allows us to run Spark jobs without having to do all the setup on our machines.

* Once they're in industry, students may not use Google Colab as their environment very often. But, Google Colab is a great way to learn and practice.

  * In their future careers, students will more often set up Spark to run on their local machines, or use a vendor that provides Spark capability.

* Today, we will use **cloud-based notebooks** to run Spark.

* Google Colab notebooks are Google-hosted notebooks.

* These cloud-based notebooks allow for easy installation of Spark and the use of cloud computing power.

* Students will need a Google account to use them. If they do not have one already, encourage them to sign up for one now.

#### Set Up Google Colab

Instruct students to follow along on their machines:

1. Start by navigating to [Google Colaboratory](https://colab.research.google.com/notebooks/welcome.ipynb).

2. Once you have a Google account set up, navigate to [Google drive](https://www.google.com/drive/) and select **Go to Google Drive**.

3. After you have navigated to Google Drive, click the **New** button and select **Folder** to create a new folder. Refer to the following screenshots.<!-- No screenshots included --> Name the folder `DataClassNotebooks`.

4. Navigate to the new folder. Once in the notebook, we'll need to connect (download) our Google Colab application by following these steps:

    * Click **New**.

    * Scroll down to **More** and expand the drop-down menu.

    * At the bottom of the menu, click **Connect more apps**.

    * Type "colab" in the top-right search field, and press **Enter** to search for the Colaboratory application.

    * Click the **Connect** button to download the Colaboratory application.

5. Create a Colab Notebook by clicking **New**, followed by **More**, and then selecting **Colaboratory**.

6. A new tab will launch with a new notebook. The functionality is similar to that of Jupyter Notebook, except that now everything is hosted online.

7. Notebooks can be uploaded directly to Colab. Follow the steps below to upload the [spark_dataframe_basics.ipnyb](Activities/04-Ins_Pyspark_DataFrames_Basics/Solved/spark_dataframe_basics.ipynb) file.

    * From the Colab notebook that you just opened, click **File**, then **Upload Notebook**.

    * Drag the `spark_dataframe_basics.ipnyb` file into the box to upload.

8. Note that when you upload notebooks, their location in Google Drive will default to a folder called `Colab Notebooks`. You can easily move these files to the `DataClassNotebooks` folder that we created earlier.

 </details>

---

### 6. <a name="Section6"></a> PySpark DataFrames

 | Activity Time:       0:55 |  Elapsed Time:      2:40  |
 |---------------------------|---------------------------|

<details>
  <summary><strong>📣 6.1 Instructor Do: PySpark DataFrame Basics (0:20)</strong></summary>
<br>

In the previous set of activities, students learned more about Spark and how to get their programming environment set up. Now, students will learn more about PySpark and how to actually write PySpark code. Given that PySpark tends to be more popular in the workplace, it will benefit students to pay close attention to this lesson.

Introduce **PySpark** and writing PySpark code by explaining the following: 

* When using Colab, each time you open a new notebook, you will need to install Spark and create a SparkSession. -->

Next, we'll take students through a demonstration of how to use PySpark.

#### PySpark Demonstration

1. Open [spark_dataframe_basics.ipnyb](Activities/04-Ins_Pyspark_DataFrames_Basics/Solved/spark_dataframe_basics.ipynb) in Colab.

2. Start by explaining the first two code blocks:

   * The first block of code may seem scary, but all it does is install Spark into our Colab environment. This only takes a few seconds, and it saves us the hassle of configuring Spark locally. 

   > *Note:* Spark is constantly updated, and the version used in the code below may be outdated. If you run into an issue installing Spark, visit the [Spark distribution](http://www-us.apache.org/dist/spark/) to find the most current version of Spark and update the version in the variable below. You will need to update this for all notebooks. 

   * The second block of code starts a new SparkSession and names it `DataFrameBasics`.

     * A SparkSession is a way for you to to control your Spark application. Before interacting with Spark, you will need to start a session and name the app. You could use any name, but it's usually good to associate the app name with what you are doing.

    ```python
    # Start Spark session
    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName("DataFrameBasics").getOrCreate()
    ```

   * Remind students that these two blocks of code will need to be run with every new notebook that will use Spark. Only the app name will change.

3. Now that Spark has been installed in the notebook and a session started, continue to explain the rest of the code.

4. Spark can create DataFrames manually using the `createDataFrame` function.

    ```python
    # Create DataFrame manually
    dataframe = spark.createDataFrame([
                                      (0, "Here is our DataFrame"),
                                      (1, "We are making one from scratch"),
                                      (2, "This will look ver similar to a Pandas DataFrame")
    ], ["id", "words"])

    dataframe.show()
    ```

5. Explain to students that Colab can also read datasets directly from the cloud rather than from local files. In this code block, Colab will pull data from Amazon's **Simple Storage Service (S3)**. (We will learn more about S3 in the next lesson.) This boilerplate code can be used to read other public files hosted on Amazon's services.

    ```python
    # Read in data from S3 Buckets
    from pyspark import SparkFiles
    url = "https://s3.amazonaws.com/dataviz-curriculum/day_1/food.csv"
    spark.sparkContext.addFile(url)
    df = spark.read.csv(SparkFiles.get("food.csv"), sep=",", header=True)
    ```

6. Similar to Pandas, Spark has a mechanism for reading data and storing it as a DataFrame. Conceptually, Spark DataFrames are similar to Pandas DataFrames. But with Spark, the data is distributed.

   * Spark DataFrames organize data in a column and row format, where each column represents a variable, and each row represents a data point.

   * Spark DataFrames take in data from a variety of sources, apply transformations, and collect and display data.

   * When loading JSON data, the schema may not always be correct, so Spark allows importing types and manually setting the schema.

   * Data access and manipulation in Spark are very similar to those in Pandas.

7. `StructField` takes in the column's name, defines the data type, and takes in a Boolean. This is necessary because JSON files need to have the schema manually set. 

   * Spark uses the .`show()` method to display data from DataFrames.

   * Spark can access the DataFrame in many different ways.

8. Explain to students that columns can be manipulated using the `withColumn()` method, and demonstrate how to manipulate the NewPrice column.

    ```python
    # Add new column
    dataframe.withColumn('newprice', dataframe['price']).show()
    ```

9. Explain to students that columns can also be renamed using the `withColumnRenamed()`method, and demonstrate how to rename the Price column.

    ```python
    # Update column name
    dataframe.withColumnRenamed('price','newerprice').show()
    ```

10. Share with students that a list can be made out of columns with `.collect()`.

    ```python
    # Collecting a column as a list
    dataframe.select("price").collect()
    ```

11. Show students how to use the `toPandas()` method to convert a PySpark DataFrame to a Pandas DataFrame. This should only be done for summarized or aggregated subsets of the original Spark DataFrame. 
    ```python
    import pandas as pd
    pandas_df = dataframe.toPandas()
    ```

Finally, share the [PySpark documentation](http://spark.apache.org/docs/latest/api/python/index.html) with students to explore further on their own, and explain that next, students will practice using PySpark themselves.

</details>

<details>
  <summary><strong>✏️ 6.2 Student Do: Demographic DataFrame Basics (0:25)</strong></summary>
<br>

In this activity, students will use the basics of PySpark DataFrames to analyze a demographic CSV file. Throughout their careers, they will use PySpark to analyze CSV files, so this is an important skill for them to learn.

**Files:**

  * [Activity Instructions](Activities/05-Stu_Pyspark_DataFrames_Basics/README.md)

  * [demographics.ipynb](Activities/05-Stu_Pyspark_DataFrames_Basics/Unsolved/demographics.ipynb)

  * [demographics.csv](Activities/05-Stu_Pyspark_DataFrames_Basics/Resources/demographics.csv)

**Instructions:**

1. Install Spark and Java using the code provided.

2. Start your SparkSession.

3. Read in the `demographics.csv` file from the S3 bucket.

4. Print the column names.

5. Print out the first ten rows.

6. Select the Age, Height_meter, and Weight_kg columns, and use the `describe()` method to show the summary statistics.

7. Print the schema to see the types.

8. Rename the Salary column to Salary (1k), and show only the new column.

9. Create a new column called Salary, where the values are Salary (1k) * 1000. Show both of the columns.

10. **Bonus:** Save the Salary and Salary (1k) columns out to a valid JSON file.

</details>

<details>
  <summary><strong>⭐ 6.3 Review: Demographic DataFrame Basics (0:10)</strong></summary>
<br>

* Open the solved [demographics.ipynb](Activities/05-Stu_Pyspark_DataFrames_Basics/Solved/demographics.ipynb) Jupyter notebook in Colab and go over the code.

* Be sure to explain the following key points:

  * Spark is installed and a SparkSession is started.

  * A URL to the data is stored in a variable.

  * Spark adds the file with `spark.sparkContext.addFile(url)`.

  * Use Spark to read in the data, which separates by commas and takes the header.

     * `spark.read.csv(SparkFiles.get("demographics.csv"), sep=",", header=True)` 

  * Use `df.columns` to see the list of column names.

  * A summary of the DataFrame columns using the `.show()` method is similar to using the `.head()` method in Pandas.

  * Use `describe()` and `printSchema()` to show the schema.

  * Show that we can select specific columns to `describe`.

  * Show that the Salary column can be renamed using `withColumnRenamed`.

  * Show that a new Salary column can be added that multiplies each Salary (1k) column by 1,000.

</details>

---

### 7. <a name="Section7"></a> Review, Recap, & End Class

 | Activity Time:       0:20 |  Elapsed Time:      3:00  |
 |---------------------------|---------------------------|

<details>
  <summary><strong>📣 7.1 Instructor Do: Answer Questions (0:10)</strong></summary>
<br>

As a reminder, our class objectives for today were to:

  * Identify the components of the Hadoop ecosystem.

  * Write a Python script that implements a MapReduce programming model.

  * Identify the differences between Hadoop and Spark environments.

  * Create a DataFrame in PySpark.

Make sure to answer any lingering questions students may have.
</details>

<details>
  <summary><strong>📣 7.2 Student Do: Skill Drill (0:10)</strong></summary>
<br>

For this skill drill, students are tasked with using their knowledge of Spark to do a word count on the book [Peter Pan](https://www.gutenberg.org/files/16/16-h/16-h.htm). Students will find the count for each word and return it. 

**Files**

  * [Activity Instructions](../../../02-Assignments/07-PySpark/01-SkillDrill/README.md)

  * [WordCount.ipynb](../../../02-Assignments/07-PySpark/01-SkillDrill/WordCount.ipynb)

**Instructions**

1. Using PySpark and lambda, write code that produces the count for each word in the Peter Pan book.

2. Write your RDD out to an output file.

</details>

---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
