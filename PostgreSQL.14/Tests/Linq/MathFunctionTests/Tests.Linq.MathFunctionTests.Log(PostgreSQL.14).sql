﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Ln(Cast(p."MoneyValue" as Float))) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t.c1 <> 0.10000000000000001

