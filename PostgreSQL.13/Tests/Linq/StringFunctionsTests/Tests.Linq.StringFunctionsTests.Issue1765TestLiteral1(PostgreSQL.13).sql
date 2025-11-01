-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t."Value4", ' -> ')
FROM
	"SampleClass" t

