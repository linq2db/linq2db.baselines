﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	TRUNC(t."DateTimeValue" + 11 * INTERVAL '1' YEAR)
FROM
	"LinqDataTypes" t

