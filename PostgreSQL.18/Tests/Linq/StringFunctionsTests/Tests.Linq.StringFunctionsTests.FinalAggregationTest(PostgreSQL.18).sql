-- PostgreSQL.18 PostgreSQL

SELECT
	STRING_AGG(t."Value1", ' -> ')
FROM
	"SampleClass" t

