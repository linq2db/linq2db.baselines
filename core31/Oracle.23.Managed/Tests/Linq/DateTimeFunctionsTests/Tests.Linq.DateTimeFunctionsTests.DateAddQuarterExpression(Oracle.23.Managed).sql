﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = -1

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '3' MONTH
FROM
	"LinqDataTypes" t

