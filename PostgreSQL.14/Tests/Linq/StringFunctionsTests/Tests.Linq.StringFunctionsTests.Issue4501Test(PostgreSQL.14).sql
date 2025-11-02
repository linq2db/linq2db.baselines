-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."Id",
	STRING_AGG(g_1."Value1", ', ')
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id"

