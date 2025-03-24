﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toUInt64(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toUInt64(0)

