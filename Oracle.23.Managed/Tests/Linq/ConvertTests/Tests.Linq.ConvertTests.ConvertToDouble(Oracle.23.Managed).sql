﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."c1"
FROM
	(
		SELECT
			CAST(t."MoneyValue" AS Float) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."c1" > 0D

