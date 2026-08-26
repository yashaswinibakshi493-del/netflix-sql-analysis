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
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;
