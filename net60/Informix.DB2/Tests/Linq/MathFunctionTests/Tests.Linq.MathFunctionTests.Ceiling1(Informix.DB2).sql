﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			Ceil(-(p.MoneyValue + 1)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

