BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	g_1."Id",
	LISTAGG(g_1."Value1", ', ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id"

