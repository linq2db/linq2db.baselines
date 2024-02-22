﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			CASE
				WHEN t."MoneyValue" * 2 = Round(t."MoneyValue" * 2, 1) AND t."MoneyValue" <> Round(t."MoneyValue", 1)
					THEN Round(t."MoneyValue" / 2, 1) * 2
				ELSE Round(t."MoneyValue", 1)
			END as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."c1" <> 0 OR t_1."c1" IS NULL) AND (t_1."c1" <> 7 OR t_1."c1" IS NULL)

