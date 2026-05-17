-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG(Coalesce(t1."NullableValue", ''), ', ' ORDER BY t1."NotNullableValue" NULLS FIRST)
FROM
	"SampleClass" t1

