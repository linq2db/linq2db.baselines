-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @date Timestamp -- DateTime2
SET     @date = '2020-12-31'::date

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE 'UTC')) = :date

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @later Timestamp -- DateTime2
SET     @later = '2020-12-31 01:00:00'::timestamp

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	Date_Trunc('day', (r."Dto" AT TIME ZONE 'UTC')) = :later

