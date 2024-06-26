﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	TO_TIMESTAMP('2010-' || LPad(CAST(t.ID AS VarChar(2)), 2, '0') || '-01 20:35:44.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
FROM
	"LinqDataTypes" t
WHERE
	EXTRACT(YEAR FROM TO_TIMESTAMP('2010-' || LPad(CAST(t.ID AS VarChar(2)), 2, '0') || '-01 20:35:44.000', 'YYYY-MM-DD HH24:MI:SS.FF3')) = 2010

