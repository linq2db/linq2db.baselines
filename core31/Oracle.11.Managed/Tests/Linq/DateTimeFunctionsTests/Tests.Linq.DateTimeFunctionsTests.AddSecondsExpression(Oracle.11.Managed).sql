﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p_1 Int32
SET     @p_1 = -35

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' SECOND
FROM
	"LinqDataTypes" t

