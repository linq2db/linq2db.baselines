﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	BaseTable x
WHERE
	x.Id = 1
LIMIT 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	BaseTable x
WHERE
	x.Id = 1 AND x.Value = 100
LIMIT 1

