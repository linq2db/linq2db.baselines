﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue > toDecimal64('0', 4)

