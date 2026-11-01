# OTT Streaming Content Trend Analysis – Amazon Prime Video

## Project Overview

This project analyzes the Amazon Prime Video content catalogue to understand its composition and identify trends across movies, TV shows, genres, ratings, countries, and release years.

The analysis was completed as part of the **Data Analytics Internship at Veda Technology**. It demonstrates practical data analytics skills, including data inspection, cleaning, exploratory data analysis, SQL querying, spreadsheet analysis, and visualization.

## Objectives

- Understand the distribution of movies and TV shows.
- Identify the most frequently represented genres.
- Analyze content distribution across countries.
- Examine content ratings and release-year trends.
- Explore movie durations and TV show seasons.
- Prepare cleaned data and summary reports for further analysis.

## Tools and Technologies

- **Python:** Data cleaning, preprocessing, and exploratory data analysis.
- **Pandas:** Data manipulation and analysis.
- **Matplotlib & Seaborn:** Data visualization.
- **SQL (MySQL 8+):** Query-based analysis.
- **Microsoft Excel:** Summary tables, analysis, and charts.
- **Jupyter Notebook:** Interactive Python environment.

## Dataset

**Dataset:** Amazon Prime Video Titles

The dataset contains catalogue information about movies and TV shows available on Amazon Prime Video.

Key columns include:

- `show_id` – Unique content identifier.
- `type` – Movie or TV Show.
- `title` – Content title.
- `director` – Director information.
- `cast` – Cast details.
- `country` – Country information.
- `date_added` – Date the content was added.
- `release_year` – Original release year.
- `rating` – Content rating.
- `duration` – Movie duration or number of seasons.
- `listed_in` – Genre or category.
- `description` – Content description.

**Dataset size:** 9,668 records and 12 columns.

## Project Workflow

1. **Data Loading:** Imported the Amazon Prime Video dataset into Python using Pandas.
2. **Data Inspection:** Examined dataset dimensions, column types, missing values, and duplicate records.
3. **Data Cleaning:** Handled missing values, checked duplicates, and prepared data for analysis.
4. **Exploratory Data Analysis:** Studied content types, genres, ratings, countries, release years, and durations.
5. **SQL Analysis:** Used SQL queries to explore catalogue patterns and summarize key information.
6. **Excel Analysis:** Created summary tables and charts to present important findings.
7. **Reporting:** Prepared a project report documenting the workflow, findings, and recommendations.

## Key Analysis Areas

- Movie vs TV Show distribution.
- Genre-wise content distribution.
- Country-wise catalogue representation.
- Content rating distribution.
- Release-year trends.
- Movie duration analysis.
- TV show season distribution.
- Content addition trends.

## Key Findings

- The dataset contains **9,668 titles**.
- Movies account for **7,814 titles**.
- TV shows account for **1,854 titles**.
- Drama is the most frequently represented genre.
- The United States has the highest country representation.
- 2021 is the most frequently represented release year.

*Note: Genre and country fields can contain multiple values per title. Therefore, their category counts are multi-label counts and may exceed the number of unique titles.*

## Repository Structure

```text
OTT-Streaming-Content-Trend-Analysis/
│
├── OTT_Amazon_Prime_Content_Trend_Analysis.ipynb
├── OTT_Amazon_Prime_Content_Trend_Analysis.sql
├── OTT_Amazon_Prime_Content_Trend_Analysis.xlsx
├── amazon_prime_cleaned.csv
├── Veda_Technology_Project_2_Amazon_Prime_OTT_Trend_Analysis_Report.pdf
└── README.md
```

## How to Run the Project

### 1. Clone the repository

```bash
git clone <your-repository-url>
```

### 2. Install the required libraries

```bash
pip install pandas numpy matplotlib seaborn openpyxl jupyter
```

### 3. Open Jupyter Notebook

```bash
jupyter notebook
```

### 4. Run the notebook

Open `OTT_Amazon_Prime_Content_Trend_Analysis.ipynb` and execute the cells sequentially.

### 5. SQL Analysis

Import the original dataset into MySQL 8+ and create a table named `amazon_prime_titles` in the `ott_analysis` schema before executing the SQL script.

## Important Limitation

This dataset contains catalogue metadata rather than actual platform engagement data. It does not provide views, watch time, subscriber activity, revenue, or licensing costs. Therefore, the analysis identifies catalogue patterns and representation, not actual audience preferences or commercial performance.

## Conclusion

This project provided practical experience in analyzing a real-world entertainment catalogue using Python, SQL, and Excel. It helped develop skills in data cleaning, exploratory analysis, visualization, and communicating insights through structured reporting.

## Internship

**Organization:** Veda Technology  
**Program:** Data Analytics Internship  
**Project:** Project 2 of 5 – OTT Streaming Content Trend Analysis

---

*This project is intended for educational and analytical purposes.*
