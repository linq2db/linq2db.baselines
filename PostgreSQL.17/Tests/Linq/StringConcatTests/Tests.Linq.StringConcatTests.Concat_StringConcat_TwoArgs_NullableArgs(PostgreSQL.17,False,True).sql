-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Value1" || Coalesce(t."Value2", '')
FROM
	"StringConcatNullEntity" t
ORDER BY
	t."ID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value1",
	t1."Value2"
FROM
	"StringConcatNullEntity" t1

