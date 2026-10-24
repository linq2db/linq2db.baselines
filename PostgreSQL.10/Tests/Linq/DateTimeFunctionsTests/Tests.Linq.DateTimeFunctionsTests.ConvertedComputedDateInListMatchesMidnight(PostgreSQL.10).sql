-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @CoarseMidnight Date
SET     @CoarseMidnight = '2026-06-01'::date

SELECT
	COUNT(*)
FROM
	"ConvertedDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (:CoarseMidnight)

