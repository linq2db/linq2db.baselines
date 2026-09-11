-- PostgreSQL.9.3 PostgreSQL
SELECT
	STRING_AGG(t1."Value1", ' -> ')
FROM
	"SampleClass" t1

