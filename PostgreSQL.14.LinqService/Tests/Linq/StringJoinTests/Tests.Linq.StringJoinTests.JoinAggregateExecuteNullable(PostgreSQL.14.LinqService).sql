BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Coalesce(STRING_AGG(Coalesce(t1."NullableValue", ''), ', ' ORDER BY t1."NotNullableValue" NULLS FIRST), '')
FROM
	"SampleClass" t1

