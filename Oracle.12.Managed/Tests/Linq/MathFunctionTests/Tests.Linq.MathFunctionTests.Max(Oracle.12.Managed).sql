﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			GREATEST(p."MoneyValue", 5.1) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0

