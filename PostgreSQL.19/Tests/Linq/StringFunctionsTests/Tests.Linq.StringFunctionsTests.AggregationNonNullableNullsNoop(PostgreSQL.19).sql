-- PostgreSQL.19 PostgreSQL13

SELECT
	STRING_AGG(t1."Value2", ' -> ' ORDER BY t1."Id" NULLS FIRST)
FROM
	"SampleClass" t1

-- PostgreSQL.19 PostgreSQL13

SELECT
	STRING_AGG(t1."Value2", ' -> ' ORDER BY t1."Id" NULLS FIRST)
FROM
	"SampleClass" t1

