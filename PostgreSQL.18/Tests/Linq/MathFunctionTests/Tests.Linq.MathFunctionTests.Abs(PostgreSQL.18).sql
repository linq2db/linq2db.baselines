﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Abs(p."MoneyValue") as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 > 0

