﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Ceiling(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Ceiling(p."MoneyValue") <> 0

