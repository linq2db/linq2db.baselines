﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 5

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + :p * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

