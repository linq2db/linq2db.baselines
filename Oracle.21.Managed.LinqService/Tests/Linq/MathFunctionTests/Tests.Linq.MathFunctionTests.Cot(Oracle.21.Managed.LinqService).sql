﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			Floor((Cos(CAST(p."MoneyValue" AS Float) / 15D) / Sin(CAST(p."MoneyValue" AS Float) / 15D)) * 15D) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0.10000000000000001D

