-- Hit vs Flop
SELECT 
    is_hit,
    COUNT(*) AS total_movies,
    ROUND(AVG(roi), 2) AS avg_roi,
    ROUND(AVG(budget), 0) AS avg_budget,
    ROUND(AVG(revenue), 0) AS avg_revenue
FROM movies
GROUP BY is_hit;

-- Hit rate by genre
SELECT 
    main_genre,
    COUNT(*) AS total_movies,
    SUM(is_hit) AS hit_movies,
    ROUND(100.0 * SUM(is_hit) / COUNT(*), 2) AS hit_rate
FROM movies
GROUP BY main_genre
ORDER BY hit_rate DESC;

-- Hit rate by budget
SELECT
    CASE
        WHEN budget < 20000000 THEN 'Low Budget'
        WHEN budget BETWEEN 20000000 AND 100000000 THEN 'Medium Budget'
        ELSE 'High Budget'
    END AS budget_category,
    COUNT(*) AS total_movies,
    SUM(is_hit) AS hit_movies,
    ROUND(100.0 * SUM(is_hit) / COUNT(*), 2) AS hit_rate
FROM movies
GROUP BY budget_category
ORDER BY hit_rate DESC;

-- Top actors
SELECT
    lead_actor,
    COUNT(*) AS total_movies,
    SUM(is_hit) AS hit_movies,
    ROUND(100.0 * SUM(is_hit) / COUNT(*), 2) AS hit_rate
FROM movies
WHERE lead_actor IS NOT NULL
GROUP BY lead_actor
HAVING COUNT(*) >= 10
ORDER BY hit_rate DESC
LIMIT 10;

-- Top directors
SELECT
    director,
    COUNT(*) AS total_movies,
    SUM(is_hit) AS hit_movies,
    ROUND(100.0 * SUM(is_hit) / COUNT(*), 2) AS hit_rate
FROM movies
WHERE director IS NOT NULL
GROUP BY director
HAVING COUNT(*) >= 5
ORDER BY hit_rate DESC
LIMIT 10;
