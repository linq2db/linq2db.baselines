-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (r."OpenedOn")

