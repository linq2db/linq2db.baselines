﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Date_1 Int32
SET     @Date_1 = 1

SELECT
	TRUNC(t."DateTimeValue" + :Date_1 * INTERVAL '1' YEAR)
FROM
	"LinqDataTypes" t

