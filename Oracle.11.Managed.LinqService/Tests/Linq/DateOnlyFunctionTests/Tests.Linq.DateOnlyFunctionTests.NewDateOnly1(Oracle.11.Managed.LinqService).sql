﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM t."DateTimeValue") AS VarChar(4)), 4, '0') || '-10-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
FROM
	"LinqDataTypes" t

