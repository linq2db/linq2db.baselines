﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDecimal128(t.MoneyValue * toDecimal64('1000', 10), toUInt8(10))
FROM
	LinqDataTypes t

