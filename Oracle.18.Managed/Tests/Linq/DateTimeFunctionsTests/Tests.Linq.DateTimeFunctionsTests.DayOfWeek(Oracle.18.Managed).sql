﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Mod(1 + Trunc(t."DateTimeValue") - Trunc(t."DateTimeValue", 'IW'), 7)
FROM
	"LinqDataTypes" t

