﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(t.MoneyValue as Decimal(29, 10))
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Decimal(29, 10)) > 0

