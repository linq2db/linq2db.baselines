﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Int32
SET     @Value = 2

SELECT
	TRUNC(t."DateTimeValue" + :Value * INTERVAL '1' MONTH)
FROM
	"LinqDataTypes" t

