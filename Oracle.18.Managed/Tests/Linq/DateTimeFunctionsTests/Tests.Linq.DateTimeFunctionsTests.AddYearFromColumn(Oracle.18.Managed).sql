﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' YEAR)
FROM
	"LinqDataTypes" t

