﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t."MoneyValue" <> 4.5
			THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" t
WHERE
	t."MoneyValue" = 4.5

