-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (r."OpenedOn")

