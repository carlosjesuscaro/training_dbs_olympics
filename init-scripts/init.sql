-- Set client encoding to UTF-8 to ensure proper character handling
SET client_encoding TO 'UTF8';

-- Drop the table if it already exists to allow for a clean re-run
DROP TABLE IF EXISTS olympics_events;

-- Create the table with all 15 columns from the CSV file
CREATE TABLE olympics_events (
    ID INT,
    Name VARCHAR,
    Sex VARCHAR(1),
    Age INT,    -- Using VARCHAR as some values are "NA"
    Height NUMERIC(6, 2), -- Using VARCHAR as some values are "NA"
    Weight NUMERIC(6, 2), -- Using VARCHAR as some values are "NA"
    Team VARCHAR,
    NOC VARCHAR(3),
    Games VARCHAR,
    EventYear INT,
    Season VARCHAR,
    City VARCHAR,
    Sport VARCHAR,
    Event VARCHAR,
    Medal VARCHAR
);

-- Copy the data from the CSV file into the newly created table
-- The path '/data/athlete_events.csv' is the path INSIDE the Docker container
COPY olympics_events
FROM '/data/athlete_events.csv'
DELIMITER ','
CSV HEADER
NULL 'NA';
