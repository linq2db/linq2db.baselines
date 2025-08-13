BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	MAX(g_1."Value1"),
	STRING_AGG(g_1."Value1", ' -> ')
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value1"

