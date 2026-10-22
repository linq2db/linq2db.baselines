-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (r."OpenedOn")

