-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MAX(g_1."Value1"),
	LISTAGG(g_1."Value1", ' -> ') WITHIN GROUP (ORDER BY g_1."Value1")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value1"

