﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Int32
SET     @Value = 1

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + :Value * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

