﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			Trunc(p."MoneyValue", 0) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0.1

