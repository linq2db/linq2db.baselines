﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Round(p."MoneyValue", 1) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

