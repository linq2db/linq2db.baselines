﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Degrees(Cast(Floor(p."MoneyValue") as Int)) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Cast(t.c1 as Float) <> 0.10000000000000001

