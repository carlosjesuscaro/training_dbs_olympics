SELECT *
FROM olympics_events;

SELECT Age
FROM olympics_events;

SELECT
    Sex,
    ROUND(AVG(Height), 2)
FROM olympics_events
GROUP BY 1;