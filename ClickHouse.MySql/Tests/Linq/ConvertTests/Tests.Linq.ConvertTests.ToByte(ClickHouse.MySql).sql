﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toUInt8(p.MoneyValue) > toUInt8(0)

