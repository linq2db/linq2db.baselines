-- PostgreSQL.9.5 PostgreSQL
SELECT
	t."D"::Int / 2
FROM
	"DoubleStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."D"
FROM
	"DoubleStoredIntegerTable" t1

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id"
FROM
	"DoubleStoredIntegerTable" t
WHERE
	t."D"::Int / 2 = -3
ORDER BY
	t."Id"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."D"
FROM
	"DoubleStoredIntegerTable" t1

