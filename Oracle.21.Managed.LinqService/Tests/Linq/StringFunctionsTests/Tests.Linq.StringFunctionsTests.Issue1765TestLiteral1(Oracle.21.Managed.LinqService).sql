﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t."Value4", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t

