TRUNCATE TABLE movies;

COPY movies
FROM 'D:\Projects\github-projects\movie-success-analytics\data\processed\movies_sql.csv'
DELIMITER ','
CSV HEADER;