-- PostgreSQL.9.3 PostgreSQL
SELECT
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1

