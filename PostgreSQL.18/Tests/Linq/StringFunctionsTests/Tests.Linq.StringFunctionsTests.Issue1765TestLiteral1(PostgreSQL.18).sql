-- PostgreSQL.18 PostgreSQL13

SELECT
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1

