﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int32
SET     @p1 = 5

SELECT
	t.DateTimeValue + :p1 * INTERVAL '1' MINUTE
FROM
	LinqDataTypes t

