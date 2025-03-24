﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

INSERT INTO ValuesTable
(
	Id,
	SomeValue1,
	SomeValue2
)
VALUES
(
	toInt64(1),
	2,
	2
)

BeforeExecute
--  ClickHouse.MySql ClickHouse

ALTER TABLE
	ValuesTable
UPDATE
	SomeValue1 = 8,
	SomeValue2 = 4
WHERE 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.SomeValue1,
	t1.SomeValue2
FROM
	ValuesTable t1
LIMIT 2

BeforeExecute
--  ClickHouse.MySql ClickHouse

ALTER TABLE
	ValuesTable
UPDATE
	SomeValue2 = 8
WHERE 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.SomeValue1,
	t1.SomeValue2
FROM
	ValuesTable t1
LIMIT 2

