﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Ceil(t."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."c1" <> 0 OR t_1."c1" IS NULL)

