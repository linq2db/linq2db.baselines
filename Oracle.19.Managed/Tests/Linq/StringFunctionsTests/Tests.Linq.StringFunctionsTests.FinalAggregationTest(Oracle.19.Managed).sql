﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t."Value1", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t

