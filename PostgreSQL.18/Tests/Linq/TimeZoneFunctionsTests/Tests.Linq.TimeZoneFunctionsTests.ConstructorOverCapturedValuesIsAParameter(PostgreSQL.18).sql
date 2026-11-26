-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.18 PostgreSQL12
DECLARE @p TimestampTz -- DateTimeOffset
SET     @p = '2020-06-15 11:20:00.000000+00:00'::timestamptz

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	r."Dto" = :p

