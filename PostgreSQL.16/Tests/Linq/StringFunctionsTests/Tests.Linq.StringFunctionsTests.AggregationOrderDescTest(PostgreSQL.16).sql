-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	MAX(g_1."Value1"),
	STRING_AGG(g_1."Value1", ' -> ' ORDER BY g_1."Value1" DESC NULLS FIRST)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value1"

