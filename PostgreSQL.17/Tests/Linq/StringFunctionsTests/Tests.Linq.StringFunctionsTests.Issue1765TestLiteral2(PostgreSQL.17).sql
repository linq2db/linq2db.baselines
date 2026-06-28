-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1

