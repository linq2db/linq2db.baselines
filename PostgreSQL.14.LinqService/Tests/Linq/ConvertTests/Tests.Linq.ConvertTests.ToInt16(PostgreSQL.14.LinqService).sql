﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(t."MoneyValue") as SmallInt)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(t."MoneyValue") as SmallInt) > 0

