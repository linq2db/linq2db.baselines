﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	MOD(EXTRACT(MONTH FROM t."DateTimeValue"), 7)
FROM
	"LinqDataTypes" t

