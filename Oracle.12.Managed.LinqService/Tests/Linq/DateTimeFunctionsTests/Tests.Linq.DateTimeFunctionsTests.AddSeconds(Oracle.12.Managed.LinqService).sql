﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + -35D * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

