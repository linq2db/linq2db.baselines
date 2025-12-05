-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(g_1."Value1", ' -> ') WITHIN GROUP (ORDER BY g_1."Value3", g_1."Value1" DESC)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value1"

