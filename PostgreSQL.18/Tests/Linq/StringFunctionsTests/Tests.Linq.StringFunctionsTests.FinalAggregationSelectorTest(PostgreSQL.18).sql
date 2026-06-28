-- PostgreSQL.18 PostgreSQL13

SELECT
	STRING_AGG(t1."Value1", ' -> ')
FROM
	"SampleClass" t1

