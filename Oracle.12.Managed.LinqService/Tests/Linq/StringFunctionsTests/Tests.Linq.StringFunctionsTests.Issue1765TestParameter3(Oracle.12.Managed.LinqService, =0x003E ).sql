BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @separator Varchar2(4) -- String
SET     @separator = ' => '

SELECT
	LISTAGG(g_1."Value4", :separator) WITHIN GROUP (ORDER BY g_1."Value3" DESC, g_1."Value4")
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

