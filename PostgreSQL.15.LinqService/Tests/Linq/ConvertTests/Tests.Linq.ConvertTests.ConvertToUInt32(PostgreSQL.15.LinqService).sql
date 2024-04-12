﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 0

SELECT
	p_1.c1
FROM
	(
		SELECT
			Floor(CASE
				WHEN p."MoneyValue" - Floor(p."MoneyValue") = 0.5 AND Floor(p."MoneyValue") % 2 = 0
					THEN Floor(p."MoneyValue")
				ELSE Round(p."MoneyValue", 0)
			END)::BigInt as c1
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1.c1 > :p

