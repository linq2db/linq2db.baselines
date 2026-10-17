-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN ('2026-06-01'::date)

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN ('2026-06-01'::date)

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	r."Value"::Date IN ('2026-06-01'::date)

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN ('2026-06-01 10:00:00'::timestamp)

