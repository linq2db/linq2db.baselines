﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = -35

SELECT
	t."DateTimeValue" + :p * INTERVAL '1' SECOND
FROM
	"LinqDataTypes" t

