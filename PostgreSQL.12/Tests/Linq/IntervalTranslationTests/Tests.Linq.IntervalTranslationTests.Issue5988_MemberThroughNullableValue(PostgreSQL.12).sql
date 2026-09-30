-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From (r."ClosedOnNullable" - r."OpenedOn")) / 86400 > 0

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From (r."ClosedOnNullable" - r."OpenedOn")) / 3600 > 0

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-09-30'::date - r."ClosedOnNullable")) / 86400 > 0

-- PostgreSQL.12 PostgreSQL12
SELECT
	Extract(epoch From (r."ClosedOnNullable" - r."OpenedOn")) / 3600
FROM
	"Issue5777Row" r
WHERE
	r."Id" = 1
LIMIT 2

