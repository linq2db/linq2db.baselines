﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + 22D * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

