﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue")::SmallInt > 0

