# Movie Success Analytics

## What Makes a Movie a Hit?
### A data-driven analysis of movie success using the TMDB dataset

---

## Project Overview

Movie Success Analytics is an end-to-end data analytics project that explores the factors contributing to a movie’s commercial success.  
Using real-world movie data from TMDB, this project answers key business questions such as:

- Which genres have the highest success rate?
- Do higher budgets guarantee success?
- How important are actors and directors in determining movie performance?

This project demonstrates a complete **Data Analyst workflow**, from raw data ingestion to SQL-based business insights.

---

## Dataset

- **Source:** TMDB Movie Metadata (Kaggle)
- **Files used:**
  - tmdb_5000_movies.csv
  - tmdb_5000_credits.csv
- **Final records analyzed:** 3,227 movies (after cleaning)

---

## Project Architecture

movie-success-analytics/
│
├── data/
│ ├── raw/
│ ├── merged/
│ ├── cleaned/
│ └── processed/
│
├── notebooks/
│ ├── 01_data_loading.ipynb
│ ├── 02_data_cleaning.ipynb
│ ├── 03_feature_engineering.ipynb
│
├── sql/
│ ├── create_tables.sql
│ ├── load_data.sql
│ └── analysis_queries.sql
│
├── README.md
└── requirements.txt


---

## Methodology

### 1 Data Loading & Integration
- Loaded raw TMDB movie and credit datasets
- Merged datasets using movie ID

### 2 Data Cleaning
- Removed movies with zero or missing budget and revenue
- Handled missing runtime and rating values
- Ensured reliable financial analysis

### 3 Feature Engineering
Created business-focused features:
- Profit (Revenue − Budget)
- ROI (Return on Investment)
- Hit / Flop classification
- Main genre
- Lead actor
- Director

### 4 Data Storage
- Loaded processed data into PostgreSQL
- Designed relational schema
- Used SQL COPY command for efficient ingestion

### 5 SQL Analysis
- Performed business analytics using:
  - GROUP BY
  - CASE WHEN
  - Aggregations
  - Filtering and ranking

---

## Key Insights

- Horror movies have the highest hit rate (~77%)
- Medium-budget movies fail more often than low- or high-budget films
- Star actors significantly reduce financial risk
- Top directors show near-perfect success rates
- Higher budgets do not guarantee success

---

## Tools & Technologies

- Python (Pandas, NumPy)
- PostgreSQL
- SQL
- pgAdmin
- Jupyter Notebook
- Kaggle (TMDB Dataset)

---

## Skills Demonstrated

- Data cleaning and preprocessing
- Feature engineering
- SQL analytics
- Database design
- Business insight generation
- End-to-end analytics pipeline

---

## Future Enhancements

- Power BI / Tableau dashboard
- Predictive model for hit vs flop
- Year-wise trend analysis
- Star schema implementation

---

## Author

Sarvesh Marne  
Data Analytics | SQL | Python

---

If you find this project interesting, feel free to star the repository!
