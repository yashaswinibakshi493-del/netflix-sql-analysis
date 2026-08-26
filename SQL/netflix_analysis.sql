-- ============================================================
-- NETFLIX SQL ANALYSIS
-- Dataset: Netflix Movies and TV Shows
-- Tool: MySQL Workbench
-- ============================================================


-- ============================================================
-- 1. DATASET OVERVIEW
-- ============================================================

-- View all records
SELECT *
FROM netflix;

-- Total number of titles
SELECT COUNT(*) AS total_titles
FROM netflix;

-- Number of movies and TV shows
SELECT
    type,
    COUNT(*) AS total_titles
FROM netflix
GROUP BY type
ORDER BY total_titles DESC;
-- ============================================================
-- 2. CONTENT ANALYSIS
-- ============================================================

-- Titles by release year
SELECT
    release_year,
    COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY release_year;

-- Titles by rating
SELECT
    rating,
    COUNT(*) AS total_titles
FROM netflix
GROUP BY rating
ORDER BY total_titles DESC;
-- ============================================================
-- 3. GENRE ANALYSIS
-- ============================================================

-- Most common genres
SELECT
    genres,
    COUNT(*) AS total_titles
FROM netflix
WHERE genres IS NOT NULL
GROUP BY genres
ORDER BY total_titles DESC
LIMIT 10;

-- Top countries by number of titles
SELECT
    country,
    COUNT(*) AS total_titles
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- Directors with the most titles
SELECT
    director,
    COUNT(*) AS total_titles
FROM netflix

-- ============================================================
-- 4. BUSINESS INSIGHTS
-- ============================================================

-- Percentage of Movies vs TV Shows
SELECT
    type,
    COUNT(*) AS total_titles,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM netflix),
        2
    ) AS percentage_of_catalogue
FROM netflix
GROUP BY type
ORDER BY percentage_of_catalogue DESC;

-- Number of titles released by decade
SELECT
    CONCAT(FLOOR(release_year / 10) * 10, 's') AS decade,
    COUNT(*) AS total_titles
FROM netflix
WHERE release_year IS NOT NULL
GROUP BY decade
ORDER BY decade;

-- Movies vs TV Shows by release year
SELECT
    release_year,
    SUM(CASE WHEN type = 'Movie' THEN 1 ELSE 0 END) AS movies,
    SUM(CASE WHEN type = 'TV Show' THEN 1 ELSE 0 END) AS tv_shows
FROM netflix
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year;
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- Average release year by content type
SELECT
    type,
    ROUND(AVG(release_year), 0) AS average_release_year
FROM netflix

-- ============================================================
-- 5. ADVANCED SQL ANALYSIS
-- ============================================================

-- Rank countries by number of titles
WITH country_counts AS (
    SELECT
        country,
        COUNT(*) AS total_titles
    FROM netflix
    WHERE country IS NOT NULL
    GROUP BY country
)
SELECT
    country,
    total_titles,
    RANK() OVER (ORDER BY total_titles DESC) AS country_rank
FROM country_counts
ORDER BY country_rank;

-- Rank titles within each release year
SELECT
    release_year,
    title,
    type,
    RANK() OVER (
        PARTITION BY release_year
        ORDER BY title
    ) AS title_rank
FROM netflix
WHERE release_year IS NOT NULL
ORDER BY release_year, title_rank;

-- Year-over-year change in number of titles
WITH yearly_titles AS (
    SELECT
        release_year,
        COUNT(*) AS total_titles
    FROM netflix
    WHERE release_year IS NOT NULL
    GROUP BY release_year
)
SELECT
    release_year,
    total_titles,
    LAG(total_titles) OVER (
        ORDER BY release_year
    ) AS previous_year_titles,
    total_titles -
    LAG(total_titles) OVER (
        ORDER BY release_year
    ) AS change_from_previous_year
FROM yearly_titles
ORDER BY release_year;


WHERE release_year IS NOT NULL
GROUP BY type;


