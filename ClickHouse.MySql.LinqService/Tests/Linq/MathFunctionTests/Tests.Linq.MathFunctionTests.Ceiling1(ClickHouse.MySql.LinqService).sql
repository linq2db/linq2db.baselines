﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Ceiling(negate(p.MoneyValue + toDecimal64('1', 4))) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toDecimal128('0', 10)

