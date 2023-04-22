﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" < 5 THEN p."MoneyValue"
				ELSE 5
			END as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	(t."c1" <> 0 OR t."c1" IS NULL)

