﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Sign(p."MoneyValue") as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0

