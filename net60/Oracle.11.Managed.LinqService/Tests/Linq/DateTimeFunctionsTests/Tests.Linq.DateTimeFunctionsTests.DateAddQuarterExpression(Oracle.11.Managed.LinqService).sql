﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = -1

SELECT
	t."DateTimeValue" + :p * INTERVAL '3' MONTH
FROM
	"LinqDataTypes" t

