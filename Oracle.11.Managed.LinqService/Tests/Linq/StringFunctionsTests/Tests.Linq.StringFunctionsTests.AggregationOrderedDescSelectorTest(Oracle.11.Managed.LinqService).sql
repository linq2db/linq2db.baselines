BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	LISTAGG(g_1."Value1", ' -> ') WITHIN GROUP (ORDER BY g_1."Value3" DESC, g_1."Value1")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value1"

