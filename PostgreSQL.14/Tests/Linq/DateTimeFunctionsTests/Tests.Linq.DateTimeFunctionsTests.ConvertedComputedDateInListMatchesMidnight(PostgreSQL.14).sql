-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @CoarseMidnight Date
SET     @CoarseMidnight = '2026-06-01'::date

SELECT
	COUNT(*)
FROM
	"ConvertedDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (:CoarseMidnight)

