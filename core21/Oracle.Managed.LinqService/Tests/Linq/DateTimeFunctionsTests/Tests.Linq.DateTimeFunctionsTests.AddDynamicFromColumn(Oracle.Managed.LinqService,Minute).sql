﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t.DateTimeValue + t.SmallIntValue * INTERVAL '1' MINUTE
FROM
	LinqDataTypes t

