﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	MOD(To_Number(To_Char(t."DateTimeValue", 'DDD')), 7)
FROM
	"LinqDataTypes" t

