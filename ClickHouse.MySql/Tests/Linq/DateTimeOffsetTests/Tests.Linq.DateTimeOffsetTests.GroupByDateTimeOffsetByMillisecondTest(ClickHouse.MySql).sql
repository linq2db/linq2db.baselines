﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Key_1,
	COUNT(*)
FROM
	(
		SELECT
			toUnixTimestamp64Milli(x.TransactionDate) % 1000 as Key_1
		FROM
			Transactions x
	) t1
GROUP BY
	t1.Key_1
ORDER BY
	t1.Key_1

