-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."D"::Int / 2
FROM
	"DoubleStoredIntegerTable" t
ORDER BY
	t."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."D"
FROM
	"DoubleStoredIntegerTable" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id"
FROM
	"DoubleStoredIntegerTable" t
WHERE
	t."D"::Int / 2 = -3
ORDER BY
	t."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."D"
FROM
	"DoubleStoredIntegerTable" t1

