﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = 41

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' SECOND
FROM
	"LinqDataTypes" t

