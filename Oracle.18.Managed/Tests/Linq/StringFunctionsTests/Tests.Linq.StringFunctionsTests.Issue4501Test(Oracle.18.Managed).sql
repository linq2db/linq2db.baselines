﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	g_1."Id",
	LISTAGG(g_1."Value1", ', ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" g_1
GROUP BY
	g_1."Id"

