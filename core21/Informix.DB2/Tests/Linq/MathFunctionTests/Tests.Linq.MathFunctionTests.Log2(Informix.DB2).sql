﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(LogN(Cast(p.MoneyValue as Float)) / 0.69314718055994529) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	(t.c1 <> 0.10000000000000001 OR t.c1 IS NULL)

