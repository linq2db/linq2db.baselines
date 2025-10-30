BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Coalesce(STRING_AGG(t1."NullableValue", ', ' ORDER BY t1."NotNullableValue"), '')
FROM
	"SampleClass" t1

