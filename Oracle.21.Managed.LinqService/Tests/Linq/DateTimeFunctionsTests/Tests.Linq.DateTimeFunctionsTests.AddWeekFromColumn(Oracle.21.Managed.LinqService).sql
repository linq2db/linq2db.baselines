﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

