﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' SECOND
FROM
	"LinqDataTypes" t

