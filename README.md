# 💻 Game : Sales & Engagement Optimization
Analyzed and visualized the video game sales and engagement data to uncover trends in game popularity, user behavior, and platform performance by merging sales and engagement data.



## 📌 Problem Statement 
To Clean & Standardize the data in Dataset and enforcing the relationship between tables and then analyze and visualize the video game sales and engagement data to uncover trends in game popularity, user behavior, and platform performance and make a interactive user friendly Dashboard.



## 🏢 Dataset 
- Data : VG Sales & Engagement Data (1980 -2025) [Dataset](Game_Analysis/1_Raw_Dataset)
- Source : Kaggle
- Size :  
    - Games Meta → 1512 rows & 14 columns.
    - Games Sales → 16598 rows & 11 columns.
- Fields : 
    - Games Meta →  Team,Release_Date,Team,Rating etc.
    - Games Sales → Name ,Platform ,Genre ,Publisher ,Region Sales etc.


## 🧹 Data Cleaning & Preparation 
### --> Games Meta :- 
  - Changed Data type of 7 fields (Release Date,Times Listed,Number of Reviews,Plays,Playing,Backlog,Wishlist) for accurate analysis.
  - Converted the Values of columns (Number of Reviews,Plays,Playing,Backlog,Wishlist by replacing {K,M,comma}).
  - Exploded Team & Genre Fields by unpivoting them.
  - Standardized Column names & their records following by removing duplicates.
  - Replacing null values in Rating with their respective genres average rating.


### --> Games Sales :-
  - Converted Data type of Year from float to int for better calculated analysis.
  - Replaced null values from Publisher to ‘Unknown’ .
#### Cleaned Dataset : [Cleaned Dataset](Game_Analysis/3_Cleaned_Dataset)
#### Python Notebooks : [Python Notebooks](Game_Analysis/2_Python_Notebooks)


## 🔁 Data Pre-Processing / Transformation 

- Split & transformed the cleaned 2 Dataset (csv files) in to 8 tables and enforced the primary keys and unique keys in them for maintaining relationship.
  - Fact Tables : Sales & Games
  - Dimension Tables : Genres,Platforms,Publishers,Teams,Game_genres,Games_Teams
- Inserted Cleaned records from Sales and Games Cleaned CSV files in to tables  

#### SQL Queries : [Queries](Game_Analysis/4_SQL Queries)


## 📈 Exploratory Data Analysis (EDA)
- Adventure Genre genrates 66 % of overall sales.
- X360 and PS3 produces highest sales across all platforms.
- Sales peaked during 2006 - 2013 Years.
- Total Sales is done 2.29k.
- Strategy based games have highest rating (4.0).
- More than 40% of users has played and playing on Nintendo Publisher.

## 🏨 Dashboard / Visualization 
















