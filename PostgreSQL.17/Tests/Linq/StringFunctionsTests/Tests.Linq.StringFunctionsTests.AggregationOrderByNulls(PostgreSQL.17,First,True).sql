-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG(t1."Value2", ' -> ' ORDER BY t1."Value1" DESC)
FROM
	"SampleClass" t1

