﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Trunc(p."MoneyValue", 0) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.1

