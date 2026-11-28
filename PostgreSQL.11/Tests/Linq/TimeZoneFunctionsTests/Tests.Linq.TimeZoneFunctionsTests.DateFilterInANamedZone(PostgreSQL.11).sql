-- PostgreSQL.11 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'
DECLARE @date Timestamp -- DateTime2
SET     @date = '2020-06-15'::date

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE :zone)) = :date

-- PostgreSQL.11 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-06-15 01:00:00'::timestamp

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE :zone)) = :later

-- PostgreSQL.11 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'
DECLARE @p Timestamp -- DateTime2
SET     @p = '2020-06-16'::date

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE :zone) + 1 * Interval '1 Day') = :p

-- PostgreSQL.11 PostgreSQL
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'
DECLARE @p Timestamp -- DateTime2
SET     @p = '2020-06-16 01:00:00'::timestamp

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE :zone) + 1 * Interval '1 Day') = :p

