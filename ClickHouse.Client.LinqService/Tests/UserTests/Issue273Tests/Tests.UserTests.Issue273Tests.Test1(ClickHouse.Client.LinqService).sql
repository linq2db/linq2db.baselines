﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.ID,
	x.BigIntValue
FROM
	LinqDataTypes x
WHERE
	x.BigIntValue IN (0, 1)

