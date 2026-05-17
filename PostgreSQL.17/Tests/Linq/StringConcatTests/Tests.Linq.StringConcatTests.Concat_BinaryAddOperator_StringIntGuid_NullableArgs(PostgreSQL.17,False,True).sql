-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Value1" || Coalesce(t."Value2"::VarChar(11), '') || Coalesce(t."Value3"::VarChar(36), '')
FROM
	"StringConcatIntGuidNullEntity" t
ORDER BY
	t."ID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value1",
	t1."Value2",
	t1."Value3"
FROM
	"StringConcatIntGuidNullEntity" t1

