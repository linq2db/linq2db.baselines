﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Cast(Floor(t."MoneyValue") as SmallInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as SmallInt) > 0

