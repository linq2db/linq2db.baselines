﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Floor(p."MoneyValue" * 57.29577951308237993927443245)
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue" * 57.29577951308237993927443245) <> 0.1

