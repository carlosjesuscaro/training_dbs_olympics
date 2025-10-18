-- Average age per sport and sex at the person level
SELECT
    DISTINCT name,
    sex,
    sport,
    eventyear,
    age,
    ROUND(AVG(age) OVER (PARTITION BY sport, sex), 2) AS avg_age
FROM olympics_events
ORDER BY 3, 2 DESC;

-- WHat is the average age per sport at the sport level
SELECT
    DISTINCT sport,
    sex,
    ROUND(AVG(age) OVER(PARTITION BY sport, sex), 2)
FROM olympics_events
ORDER BY 1;
