﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2,
	t1.Field3
FROM
	(
		SELECT toInt32(0) as Id, NULL as Field1, NULL as Field2, toInt32(4) as Field3
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2,
	t1.Field3
FROM
	(
		SELECT toInt32(0) as Id, NULL as Field1, NULL as Field2, toInt32(4) as Field3
	) t1

