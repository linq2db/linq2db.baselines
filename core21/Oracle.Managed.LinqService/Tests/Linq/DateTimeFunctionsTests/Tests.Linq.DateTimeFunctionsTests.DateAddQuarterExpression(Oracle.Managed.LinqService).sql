﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int32
SET     @p1 = -1

SELECT
	t.DateTimeValue + :p1 * INTERVAL '3' MONTH
FROM
	LinqDataTypes t

