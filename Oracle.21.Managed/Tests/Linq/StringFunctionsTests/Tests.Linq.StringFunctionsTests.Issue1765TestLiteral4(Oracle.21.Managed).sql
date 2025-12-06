-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MAX(g_1."Value4"),
	LISTAGG(g_1."Value4", ' -> ') WITHIN GROUP (ORDER BY g_1."Value4")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

