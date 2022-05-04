﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Cast(Round(p."MoneyValue", 0) as Float) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	(t.c1 <> 0 OR t.c1 IS NULL)

