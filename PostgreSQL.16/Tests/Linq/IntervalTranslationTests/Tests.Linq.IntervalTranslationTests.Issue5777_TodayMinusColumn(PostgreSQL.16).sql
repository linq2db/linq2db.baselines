-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-09-30'::date - r."ClosedOn")) / 86400 > 0

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-09-30'::date - r."ClosedOn")) / 3600 > 0

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-09-30'::date - r."ClosedOn")) / 60 > 0

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Trunc(Extract(day From ('2026-09-30'::date - r."ClosedOn")))::Int > 0

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-09-30'::date - r."ClosedOnNullable")) / 86400 > 0

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	Extract(epoch From ('2026-09-30'::date - r."ClosedOn")) / 86400

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Extract(epoch From ('2026-09-30'::date - r."ClosedOn")) / 86400
FROM
	"Issue5777Row" r
ORDER BY
	r."Id"

