﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."DateTimeValue" + t."SmallIntValue" * INTERVAL '3' MONTH
FROM
	"LinqDataTypes" t

