﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Value_1"
FROM
	(
		SELECT
			CAST(CAST(Floor(p."MoneyValue") AS Int) AS Float) * 57.295779513082323D as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	CAST(t."Value_1" AS Float) <> 0.10000000000000001D

