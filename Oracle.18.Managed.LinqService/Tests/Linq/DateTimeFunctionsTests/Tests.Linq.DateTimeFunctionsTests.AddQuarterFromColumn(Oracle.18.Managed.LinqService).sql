﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '3' MONTH)
FROM
	"LinqDataTypes" t

