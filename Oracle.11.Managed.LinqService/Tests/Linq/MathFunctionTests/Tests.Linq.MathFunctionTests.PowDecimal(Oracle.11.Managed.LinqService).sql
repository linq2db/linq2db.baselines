﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(CAST(Power(CAST(p."MoneyValue" AS Float), CAST(3 AS Float)) AS Decimal(28, 10))) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0

