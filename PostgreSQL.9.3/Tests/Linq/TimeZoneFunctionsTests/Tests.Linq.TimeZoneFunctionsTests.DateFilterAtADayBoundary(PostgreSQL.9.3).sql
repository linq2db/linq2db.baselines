-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
DECLARE @date Timestamp -- DateTime2
SET     @date = '2020-12-31'::date

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE 'UTC')) = :date

-- PostgreSQL.9.3 PostgreSQL
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-12-31 01:00:00'::timestamp

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE 'UTC')) = :later

