﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	MOD(To_Number(To_Char(t."DateTimeValue", 'SS')), 7)
FROM
	"LinqDataTypes" t

