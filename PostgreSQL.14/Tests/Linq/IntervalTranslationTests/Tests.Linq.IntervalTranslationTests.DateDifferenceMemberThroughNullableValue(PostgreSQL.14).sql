-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	Extract(epoch From (r."ClosedOnNullable" - r."OpenedOn")) / 86400 > 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	Extract(epoch From (r."ClosedOnNullable" - r."OpenedOn")) / 3600 > 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @asOf Timestamp -- DateTime2
SET     @asOf = '2026-01-03 13:30:00'::timestamp

SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	Extract(epoch From (:asOf - r."ClosedOnNullable")) / 86400 > 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (r."ClosedOnNullable" - r."OpenedOn")) / 3600
FROM
	"ClosedPeriodRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	Trunc(Extract(day From (r."ClosedOnNullable" - r."OpenedOn")))::Int > 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	Trunc(Extract(hour From (r."ClosedOnNullable" - r."OpenedOn")))::Int > 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Trunc(Extract(day From (r."ClosedOnNullable" - r."OpenedOn")))::Int,
	Trunc(Extract(hour From (r."ClosedOnNullable" - r."OpenedOn")))::Int
FROM
	"ClosedPeriodRow" r
ORDER BY
	r."Id"

