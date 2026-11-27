-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p TimestampTz -- DateTimeOffset
SET     @p = '2020-06-15 11:20:00.000000+00:00'::timestamptz

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	r."Dto" = :p

