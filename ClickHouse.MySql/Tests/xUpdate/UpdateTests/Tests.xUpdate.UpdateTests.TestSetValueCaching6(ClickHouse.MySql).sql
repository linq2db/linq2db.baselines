﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value6 = 7
WHERE
	Id = 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
--  ClickHouse.MySql ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value6 = 8
WHERE
	Id = 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Value6
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

