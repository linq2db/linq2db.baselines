BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @separator Varchar2(4) -- String
SET     @separator = ' => '

SELECT
	LISTAGG(g_1."Value4", :separator) WITHIN GROUP (ORDER BY g_1."Value3" DESC, g_1."Value4")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

