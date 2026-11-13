-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id",
	Trunc(r."D", 0),
	Trunc(r."F"::decimal, 0)::Float,
	Trunc(r."N", 0),
	Trunc(r."G"::decimal, 0)::Float,
	Trunc(r."D", 0),
	Trunc(r."F"::decimal, 0)::Float
FROM
	"TruncateValues" r
ORDER BY
	r."Id"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."D",
	t1."F",
	t1."N",
	t1."G"
FROM
	"TruncateValues" t1

