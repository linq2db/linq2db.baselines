﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toUInt32(p.MoneyValue) > toUInt32(0)

