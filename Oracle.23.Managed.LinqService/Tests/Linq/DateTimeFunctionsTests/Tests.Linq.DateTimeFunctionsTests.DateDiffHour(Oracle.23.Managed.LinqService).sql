﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(CAST ((t."DateTimeValue" + 100D * INTERVAL '1' HOUR) as DATE) - CAST (t."DateTimeValue" as DATE)) * 24
FROM
	"LinqDataTypes" t

