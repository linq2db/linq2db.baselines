-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Coalesce(STRING_AGG(t1."NullableValue", ', ' ORDER BY t1."NotNullableValue"), '')
FROM
	"SampleClass" t1

