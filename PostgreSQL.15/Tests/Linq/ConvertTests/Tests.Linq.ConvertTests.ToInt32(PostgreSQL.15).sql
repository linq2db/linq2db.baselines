﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(t."MoneyValue") as Int)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as Int) > 0

