﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."c1"
FROM
	(
		SELECT
			Cast(Floor(CASE
				WHEN t."MoneyValue" - Floor(t."MoneyValue") = 0.5 AND MOD(Floor(t."MoneyValue"), 2) = 0
					THEN Floor(t."MoneyValue")
				ELSE Round(t."MoneyValue", 0)
			END) as Number(3)) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."c1" > 0

