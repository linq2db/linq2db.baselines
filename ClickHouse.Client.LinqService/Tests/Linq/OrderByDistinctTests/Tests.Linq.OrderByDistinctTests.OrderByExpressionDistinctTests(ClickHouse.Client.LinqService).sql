﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
GROUP BY
	x.DuplicateData
ORDER BY
	max(x.OrderData1 % 3)
LIMIT 0, 3

