﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.c1
FROM
	(
		SELECT
			Ceil(p.MoneyValue) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

