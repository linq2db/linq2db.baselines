﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Cast(Floor(t."MoneyValue") as Number(3))
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as Number(3)) > 0

