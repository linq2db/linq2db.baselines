﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Trunc((-t."MoneyValue"), 0)
FROM
	"LinqDataTypes" t
WHERE
	Trunc((-t."MoneyValue"), 0)::Float <> 0.10000000000000001

