-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Coalesce(STRING_AGG(Coalesce(t1."NullableValue", ''), ', ' ORDER BY t1."NotNullableValue" NULLS FIRST), '')
FROM
	"SampleClass" t1

