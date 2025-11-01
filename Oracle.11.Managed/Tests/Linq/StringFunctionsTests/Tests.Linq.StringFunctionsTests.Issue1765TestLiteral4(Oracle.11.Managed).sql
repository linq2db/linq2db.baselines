-- Oracle.11.Managed Oracle11

SELECT
	MAX(g_1."Value4"),
	LISTAGG(g_1."Value4", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

