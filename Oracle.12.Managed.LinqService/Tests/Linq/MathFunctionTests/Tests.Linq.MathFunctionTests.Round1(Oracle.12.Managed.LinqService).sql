﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	CASE
		WHEN t."MoneyValue" - FLOOR(t."MoneyValue") = 0.5D AND MOD(FLOOR(t."MoneyValue"), 2) = 0
			THEN FLOOR(t."MoneyValue")
		ELSE ROUND(t."MoneyValue", 0)
	END <> 0

