-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1

