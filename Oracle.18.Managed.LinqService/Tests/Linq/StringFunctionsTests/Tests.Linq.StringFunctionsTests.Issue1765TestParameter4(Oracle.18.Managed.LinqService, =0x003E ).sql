BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @separator Varchar2(4) -- String
SET     @separator = ' => '

SELECT
	MAX(g_1."Value4"),
	LISTAGG(g_1."Value4", :separator) WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id",
	g_1."Value4"

