﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Sign(p.MoneyValue) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0

