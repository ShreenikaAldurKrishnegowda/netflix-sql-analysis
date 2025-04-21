# Netflix SQL Analysis 📊

This repository contains SQL queries written in Azure Data Studio to explore and analyze a dataset of Netflix titles. The data includes information about movies and TV shows such as genre, country, director, rating, and release year.

## 📁 Dataset

The dataset was imported from a CSV file using the Import Wizard in Azure Data Studio and stored in a table named `netflix_titles` inside a custom database `database_1`.

## 🔍 Queries Overview

The SQL scripts in this repository include:

- 📌 Creating and setting up the database
- 📄 Retrieving all records from the dataset
- 🎬 Grouping and counting titles by type (Movie or TV Show)
- 📅 Counting movies and shows released in 2021
- 🧹 Deleting records with missing director data
- 🎥 Listing top directors by number of titles
- 🌍 Identifying top countries by movie production count
- 👻 Fetching titles from the Horror genre
- 👶 Counting movies targeted toward children by director
- 🔍 Exploring distinct content ratings

## 🛠 Tools Used

- Azure Data Studio  
- T-SQL (Transact-SQL)

## 📈 Sample Output

Example: Top 5 countries producing the most movies:

| Country        | Movie Count |
|----------------|-------------|
| United States  | 2000        |
| India          | 881         |
| United Kingdom | 191         |
| Canada         | 116         |
| Spain          | 95          |

## 📌 Note

This is a learning-based project focused on practicing SQL queries and gaining insights from real-world datasets.

## 🚀 Getting Started

1. Clone this repo
2. Open your SQL editor (like Azure Data Studio)
3. Run queries on the `netflix_titles` table

---

Feel free to explore, suggest improvements, or add your own queries!
