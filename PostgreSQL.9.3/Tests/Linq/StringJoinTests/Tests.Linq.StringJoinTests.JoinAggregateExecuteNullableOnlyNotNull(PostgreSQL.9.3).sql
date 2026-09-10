-- PostgreSQL.9.3 PostgreSQL
SELECT
	STRING_AGG(t1."NullableValue", ', ' ORDER BY t1."NotNullableValue")
FROM
	"SampleClass" t1

