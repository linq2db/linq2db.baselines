﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Cast(Floor(t."MoneyValue") as BigInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as BigInt) > 0

