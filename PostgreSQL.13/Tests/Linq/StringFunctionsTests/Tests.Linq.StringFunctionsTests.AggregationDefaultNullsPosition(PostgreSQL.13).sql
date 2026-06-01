-- PostgreSQL.13 PostgreSQL

SELECT
	STRING_AGG(t1."Value2", ' -> ' ORDER BY t1."Value1" NULLS LAST)
FROM
	"SampleClass" t1

-- PostgreSQL.13 PostgreSQL

SELECT
	STRING_AGG(t1."Value2", ' -> ' ORDER BY t1."Value1" NULLS LAST)
FROM
	"SampleClass" t1

