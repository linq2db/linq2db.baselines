﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Sinh(CAST(p."MoneyValue" AS Float) / 15D) * 15D) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001D

