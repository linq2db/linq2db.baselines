﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Acos(Cast(p."MoneyValue" as Float) / 15) * 15) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0.10000000000000001

