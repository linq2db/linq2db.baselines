﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p_1 Int32
SET     @p_1 = 2

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' MONTH
FROM
	"LinqDataTypes" t

