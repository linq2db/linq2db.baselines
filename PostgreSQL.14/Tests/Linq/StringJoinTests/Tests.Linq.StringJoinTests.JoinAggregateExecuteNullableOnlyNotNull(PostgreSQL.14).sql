BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Coalesce(STRING_AGG(t1."NullableValue", ', ' ORDER BY t1."NotNullableValue"), '')
FROM
	"SampleClass" t1

