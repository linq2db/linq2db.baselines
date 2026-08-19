-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	STRING_AGG(t1."Value2", ' -> ' ORDER BY t1."Value1" DESC NULLS LAST)
FROM
	"SampleClass" t1

