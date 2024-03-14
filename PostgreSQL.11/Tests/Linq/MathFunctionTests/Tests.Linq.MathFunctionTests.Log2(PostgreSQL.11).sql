﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Numeric(1, 0) -- Decimal
SET     @p = 2

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(Cast(Log(:p, t."MoneyValue") as Float)) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1.c1 <> 0.10000000000000001 OR t_1.c1 IS NULL)

