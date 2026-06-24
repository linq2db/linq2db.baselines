-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	STRING_AGG(t1."Value2", ' -> ' ORDER BY t1."Value1" NULLS FIRST)
FROM
	"SampleClass" t1

