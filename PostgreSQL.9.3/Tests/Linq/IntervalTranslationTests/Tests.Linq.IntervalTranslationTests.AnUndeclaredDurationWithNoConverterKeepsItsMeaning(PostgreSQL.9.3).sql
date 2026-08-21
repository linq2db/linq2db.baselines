-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Span" + (r."FinishedOn" - r."StartedOn")
FROM
	"NativeIntervalRow" r
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
DECLARE @p Interval -- Object
SET     @p = 01:00:00

SELECT
	COUNT(*)
FROM
	"NativeIntervalRow" r
WHERE
	r."Span" + (r."FinishedOn" - r."StartedOn") > :p

