﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(t."MoneyValue") as Decimal)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as Decimal) > 0

