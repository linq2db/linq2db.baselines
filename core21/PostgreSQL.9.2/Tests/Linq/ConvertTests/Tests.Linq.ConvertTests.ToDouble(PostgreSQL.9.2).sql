﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Cast(Floor(Cast(t."MoneyValue" as Float)) as Int)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Cast(t."MoneyValue" as Float)) as Int) > 0

