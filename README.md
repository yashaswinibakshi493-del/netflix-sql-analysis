# 🎬 Netflix SQL Analysis

SQL-based analysis of the Netflix Movies and TV Shows dataset to generate business insights and identify content trends.

## 📌 Project Overview

This project analyzes Netflix Movies and TV Shows data using **MySQL** and presents the findings through an interactive **Power BI dashboard**.

The project follows an end-to-end data analysis workflow:

**Dataset → SQL Analysis → Business Insights → Power BI Visualization**

## 🎯 Business Questions

- What is the distribution of Movies and TV Shows?
- Which content ratings are most common?
- Which countries have the highest number of titles?
- Which directors have the most titles?
- Which release years have the highest number of titles?
- What is the average duration of Movies?
- How many seasons do the TV Shows have?
- Are there any missing or duplicate records?
  
## 🛠️ Tools & Technologies

- **MySQL Workbench** — SQL analysis
- **Power BI** — Data visualization and dashboard
- **CSV** — Source dataset
- **GitHub** — Version control and project documentation
  
## 📊 SQL Analysis

The SQL analysis includes:

- Dataset exploration
- Movie vs TV Show analysis
- Rating analysis
- Country analysis
- Director analysis
- Release-year analysis
- Movie duration analysis
- TV Show season analysis
- Data quality checks
- Duplicate record checks
- CTEs
- Window functions
- `CASE WHEN`
- `RANK()`
- `LAG()`

The complete SQL script is available here:

`SQL/netflix_analysis.sql`

## 📈 Power BI Dashboard

The SQL analysis was complemented with an interactive Power BI dashboard to visualize the major findings and make the analysis easier to explore.

The dashboard includes:

- Content distribution
- Rating analysis
- Release-year trends
- Country analysis
- Duration analysis
- Key performance indicators
  
### Dashboard Preview

![Netflix Dashboard Overview](PowerBI/Page1_Overview.png)

![Netflix Content Analysis](PowerBI/Page2_Content_Analysis.png)

![Netflix Insights](PowerBI/Page3_Insights.png)

## 💡 Key Insights

- **Movies account for 78.26%** of the dataset, while **TV Shows account for 21.74%**.
- **TV-MA** is the most common content rating with **7 titles**, followed by **TV-14** with **5 titles**.
- **2020** has the highest number of titles in the dataset with **3 titles**.
- **United States** has the highest number of country records with **6**, followed by **India** with **5** and **Canada** with **3**.
- Movies have an average duration of **103.83 minutes**, ranging from **47 to 168 minutes**.
- TV Shows range from **1 to 4 seasons**, with an average of **1.60 seasons**.
- The dataset contains **23 records** covering release years from **1973 to 2020**.
- Data quality checks found **5 missing director values** and **5 missing country values**.
- No duplicate `show_id` values were identified.

## **💡 Key Skills Demonstrated**

- SQL
- MySQL Workbench
- Data Cleaning & Data Quality Analysis
- Data Exploration
- Data Aggregation & Filtering
- Conditional Logic (`CASE WHEN`)
- Common Table Expressions (CTEs)
- Window Functions (`RANK()`, `LAG()`)
- Data Analysis & Business Insights
- Power BI
- Interactive Dashboard Development
- Data Visualization
- GitHub & Project Documentation

## 👩‍💻 Author

**Yashaswini Bakshi**
