﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toUInt16(p.MoneyValue) > toUInt16(0)

