﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MOD(To_Number(To_Char(t."DateTimeValue", 'MM')), 7)
FROM
	"LinqDataTypes" t

