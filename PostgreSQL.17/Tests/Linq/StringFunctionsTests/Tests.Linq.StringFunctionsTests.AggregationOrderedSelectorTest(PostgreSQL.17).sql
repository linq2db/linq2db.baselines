-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG(g_1."Value1", ' -> ' ORDER BY g_1."Value3", g_1."Value1" DESC)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value1"

