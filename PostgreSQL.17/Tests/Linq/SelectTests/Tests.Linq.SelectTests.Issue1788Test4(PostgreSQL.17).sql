-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value1"
FROM
	"Table1788" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	l."Value1"
FROM
	"Table1788" p
		LEFT JOIN "Table1788" l ON l."Id" = p."Id" + 1

