﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	LISTAGG(t."Value4", ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
FROM
	"SampleClass" t

