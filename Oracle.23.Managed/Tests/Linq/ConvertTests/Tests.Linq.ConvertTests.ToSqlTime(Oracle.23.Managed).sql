﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char(t."DateTimeValue", 'HH24')) || ':01:01'
FROM
	"LinqDataTypes" t

