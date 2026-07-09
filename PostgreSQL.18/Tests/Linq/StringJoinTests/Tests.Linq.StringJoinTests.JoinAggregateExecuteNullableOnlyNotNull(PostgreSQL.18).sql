-- PostgreSQL.18 PostgreSQL13

SELECT
	STRING_AGG(t1."NullableValue", ', ' ORDER BY t1."NotNullableValue")
FROM
	"SampleClass" t1

