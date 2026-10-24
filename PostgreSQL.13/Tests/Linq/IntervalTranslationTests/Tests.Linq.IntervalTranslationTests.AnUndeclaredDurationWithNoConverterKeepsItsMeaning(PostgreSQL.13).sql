-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Span" + (r."FinishedOn" - r."StartedOn")
FROM
	"NativeIntervalRow" r
LIMIT 2

-- PostgreSQL.13 PostgreSQL12
DECLARE @p Interval -- Object
SET     @p = 01:00:00

SELECT
	COUNT(*)
FROM
	"NativeIntervalRow" r
WHERE
	r."Span" + (r."FinishedOn" - r."StartedOn") > :p

