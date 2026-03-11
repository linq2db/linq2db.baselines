-- Oracle.11.Managed Oracle11
DECLARE @separator Varchar2(4) -- String
SET     @separator = ' => '

SELECT
	MAX(g_1."Value4"),
	LISTAGG(CAST(g_1."Value4" AS VarChar(50)), :separator) WITHIN GROUP (ORDER BY g_1."Value4")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"
ORDER BY
	g_1."Id"

