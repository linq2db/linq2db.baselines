﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Log(10D, CAST(p."MoneyValue" AS Float))) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001D

