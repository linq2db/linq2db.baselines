﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(CAST(t."MoneyValue" AS Float)) <> 0D

