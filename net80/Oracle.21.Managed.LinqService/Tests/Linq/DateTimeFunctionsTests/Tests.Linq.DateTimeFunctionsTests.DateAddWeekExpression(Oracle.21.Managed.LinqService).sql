﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -1

SELECT
	t."DateTimeValue" + :p * INTERVAL '7' DAY
FROM
	"LinqDataTypes" t

