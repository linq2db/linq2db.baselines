-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t1."Value1", ' -> ')
FROM
	"SampleClass" t1

