﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 5

SELECT
	To_Number(To_Char(t."DateTimeValue" + :p * INTERVAL '1' MINUTE, 'MI'))
FROM
	"LinqDataTypes" t

