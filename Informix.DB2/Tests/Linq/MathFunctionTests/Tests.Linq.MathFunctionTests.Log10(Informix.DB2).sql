﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(Log10(p.MoneyValue::Float)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0.10000000000000001

