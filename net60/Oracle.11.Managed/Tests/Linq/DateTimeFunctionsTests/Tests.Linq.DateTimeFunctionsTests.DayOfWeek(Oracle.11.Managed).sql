﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Mod(1 + Trunc(t."DateTimeValue") - Trunc(t."DateTimeValue", 'IW'), 7)
FROM
	"LinqDataTypes" t

