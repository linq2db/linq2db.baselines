﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			Trunc((-t."MoneyValue"), 0)::Float as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1.c1 <> 0.10000000000000001

