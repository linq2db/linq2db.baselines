﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(YEAR FROM t."DateTimeValue")
FROM
	"LinqDataTypes" t
WHERE
	EXTRACT(MONTH FROM TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM t."DateTimeValue") AS VarChar(4)), 4, '0') || '-10-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')) = 10

