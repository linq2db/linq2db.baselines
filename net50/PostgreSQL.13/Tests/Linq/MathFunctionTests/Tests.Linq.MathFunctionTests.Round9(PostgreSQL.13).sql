﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Round(p."MoneyValue", 1)
FROM
	"LinqDataTypes" p
WHERE
	Round(p."MoneyValue", 1) <> 0

