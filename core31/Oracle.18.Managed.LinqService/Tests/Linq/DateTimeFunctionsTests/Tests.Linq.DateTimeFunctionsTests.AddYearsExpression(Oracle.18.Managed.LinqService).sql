﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' YEAR
FROM
	"LinqDataTypes" t

