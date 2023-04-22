﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			Floor(Log(2D, Cast(p."MoneyValue" as Float))) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0.10000000000000001D

