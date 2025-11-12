-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Coalesce(STRING_AGG(Coalesce(t1."NullableValue", ''), ', ' ORDER BY t1."NotNullableValue" NULLS FIRST), '')
FROM
	"SampleClass" t1

