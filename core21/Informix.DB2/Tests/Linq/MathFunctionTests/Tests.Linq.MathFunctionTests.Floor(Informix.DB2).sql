﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Floor(-(p.MoneyValue + 1))
FROM
	LinqDataTypes p
WHERE
	Floor(-(p.MoneyValue + 1)) <> 0

