
-- create a new database named 'database_1'
CREATE DATABASE database_1


-- data from the CSV file is imported into a table within the 'database_1' using the Import Wizard.
-- exact table and column names will depend on the CSV file structure and how the import wizard is configured.


-- retrieves all columns and rows from the 'netflix_titles' table in the 'database_1' database.
-- 'dbo' schema is specified to access the 'netflix_titles' table.
select *
from database_1.dbo.netflix_titles


-- Selects the 'type' column from the 'netflix_titles' table and groups the results by 'type'.
-- This query will return the distinct types of titles, which in this case are 'Movie' and 'TV Show'.
select type 
from netflix_titles
group by type


-- Selects the 'type' (Movie or TV Show) and counts the number of movies or TV shows released in 2021.
-- The results are grouped by 'type', and the count of entries for each type (Movie or TV Show) is displayed.
SELECT type,COUNT(*) AS num_movies_2021
FROM netflix_titles
WHERE release_year = 2021 
group by type



-- Deletes rows from the 'netflix_titles' table where the 'director' column is NULL.
-- This operation removes records of movies or shows that do not have a specified director.
delete from netflix_titles
where director is null


-- results are grouped by 'type' and 'director', then ordered in descending order by the count of 'type'.
-- this query returns the top 5 directors with the highest number of titles, ordered by the number of movies or TV shows they've directed
select  top 5 type,director ,count(type) as ct
from netflix_titles
group by type,director
order by count(type) desc


-- gives all unique content rating values associated with movies.
select distinct rating
from netflix_titles
where type= 'Movie' 


--gives the top 10 countries with the highest number of movies in the dataset.
select top 10 count(*) as count,country
from netflix_titles
where type='Movie'
group by country 
order by count desc


-- retrieves all titles and their types that are categorized under the 'Horror' genre.
select type ,title 
from netflix_titles
where listed_in like '%Horror%'


-- Records with missing director names
SELECT * FROM netflix_titles WHERE director IS NULL;


-- list of directors along with the number of movies they directed that fall under a genre related to children, ordered by the highest count.
select director ,count(listed_in) as num_of_movies
from netflix_titles
where listed_in like '%child%' and type='Movie'
group by director
order by num_of_movies desc





