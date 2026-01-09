-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	MAX(g_1."Value4"),
	LISTAGG(CAST(g_1."Value4" AS VarChar(50)), ' -> ') WITHIN GROUP (ORDER BY g_1."Value4")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

