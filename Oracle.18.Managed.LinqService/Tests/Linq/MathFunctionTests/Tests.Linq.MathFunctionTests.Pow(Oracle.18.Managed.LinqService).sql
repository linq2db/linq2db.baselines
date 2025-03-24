﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(Power(CAST(p."MoneyValue" AS Float), 3D)) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0D

