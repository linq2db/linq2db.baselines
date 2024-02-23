﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			CASE
				WHEN t."MoneyValue" - Floor(t."MoneyValue") = 0.5 AND MOD(Floor(t."MoneyValue"), 2) = 0
					THEN Floor(t."MoneyValue")
				ELSE Round(t."MoneyValue", 0)
			END as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."c1" <> 0 OR t_1."c1" IS NULL)

