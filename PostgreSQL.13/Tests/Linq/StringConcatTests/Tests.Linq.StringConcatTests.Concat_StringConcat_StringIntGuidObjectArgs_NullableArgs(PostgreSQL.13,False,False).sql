-- PostgreSQL.13 PostgreSQL

SELECT
	t."Value1" || t."Value2"::VarChar(11) || t."Value3"::VarChar(36)
FROM
	"StringConcatIntGuidNullEntity" t
ORDER BY
	t."ID"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ID",
	t1."Value1",
	t1."Value2",
	t1."Value3"
FROM
	"StringConcatIntGuidNullEntity" t1

