-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-10-01'::date - r."ClosedOn")) / 86400 > 0

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-10-01'::date - r."ClosedOn")) / 3600 > 0

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-10-01'::date - r."ClosedOn")) / 60 > 0

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Trunc(Extract(day From ('2026-10-01'::date - r."ClosedOn")))::Int > 0

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	Extract(epoch From ('2026-10-01'::date - r."ClosedOnNullable")) / 86400 > 0

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	Extract(epoch From ('2026-10-01'::date - r."ClosedOn")) / 86400

-- PostgreSQL.9.3 PostgreSQL
SELECT
	Extract(epoch From ('2026-10-01'::date - r."ClosedOn")) / 86400
FROM
	"Issue5777Row" r
ORDER BY
	r."Id"

