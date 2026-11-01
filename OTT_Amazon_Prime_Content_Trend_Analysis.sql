CREATE DATABASE IF NOT EXISTS ott_analysis;
USE ott_analysis;
SHOW TABLES;
DESCRIBE amazon_prime_titles;
SELECT * FROM amazon_prime_titles LIMIT 10;
SELECT COUNT(*) AS total_titles FROM amazon_prime_titles;
SELECT type, COUNT(*) AS title_count
FROM amazon_prime_titles
GROUP BY type
ORDER BY title_count DESC;
SELECT release_year, COUNT(*) AS title_count
FROM amazon_prime_titles
GROUP BY release_year
ORDER BY release_year;
SELECT rating, COUNT(*) AS title_count
FROM amazon_prime_titles
WHERE rating IS NOT NULL AND TRIM(rating) <> ''
GROUP BY rating
ORDER BY title_count DESC;
SELECT
  CASE
    WHEN listed_in LIKE '%Drama%' THEN 'Drama'
    WHEN listed_in LIKE '%Action%' THEN 'Action'
    WHEN listed_in LIKE '%Comedy%' THEN 'Comedy'
    WHEN listed_in LIKE '%Documentary%' THEN 'Documentary'
    WHEN listed_in LIKE '%Horror%' THEN 'Horror'
    ELSE 'Other / Remaining'
  END AS genre_group,
  COUNT(*) AS title_count
FROM amazon_prime_titles
GROUP BY genre_group
ORDER BY title_count DESC;
SELECT country, COUNT(*) AS title_count
FROM amazon_prime_titles
WHERE country IS NOT NULL AND TRIM(country) <> ''
GROUP BY country
ORDER BY title_count DESC
LIMIT 15;
SELECT YEAR(STR_TO_DATE(date_added, '%M %d, %Y')) AS year_added,
       COUNT(*) AS titles_added
FROM amazon_prime_titles
WHERE date_added IS NOT NULL AND TRIM(date_added) <> ''
GROUP BY YEAR(STR_TO_DATE(date_added, '%M %d, %Y'))
ORDER BY year_added;
SELECT AVG(CAST(REGEXP_SUBSTR(duration, '[0-9]+') AS UNSIGNED)) AS avg_movie_runtime_minutes
FROM amazon_prime_titles
WHERE type = 'Movie' AND duration LIKE '%min%';
SELECT AVG(CAST(REGEXP_SUBSTR(duration, '[0-9]+') AS UNSIGNED)) AS avg_seasons
FROM amazon_prime_titles
WHERE type = 'TV Show' AND duration LIKE '%Season%';
SELECT type, rating, COUNT(*) AS title_count
FROM amazon_prime_titles
GROUP BY type, rating
ORDER BY type, title_count DESC;
SELECT release_year, COUNT(*) AS title_count
FROM amazon_prime_titles
GROUP BY release_year
ORDER BY release_year DESC
LIMIT 10;
SELECT
  SUM(country IS NULL OR TRIM(country) = '') AS missing_country,
  SUM(rating IS NULL OR TRIM(rating) = '') AS missing_rating,
  SUM(date_added IS NULL OR TRIM(date_added) = '') AS missing_date_added
FROM amazon_prime_titles;
SELECT TRIM(SUBSTRING_INDEX(listed_in, ',', 1)) AS primary_genre,
       COUNT(*) AS title_count
FROM amazon_prime_titles
WHERE listed_in IS NOT NULL AND TRIM(listed_in) <> ''
GROUP BY primary_genre
ORDER BY title_count DESC
LIMIT 15;
SELECT director, COUNT(*) AS title_count
FROM amazon_prime_titles
WHERE director IS NOT NULL AND TRIM(director) <> ''
GROUP BY director
ORDER BY title_count DESC
LIMIT 10;
