﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Cast(t."MoneyValue" as VarChar(31))
FROM
	"LinqDataTypes" t
WHERE
	Length(Cast(t."MoneyValue" as VarChar(31))) > 0

