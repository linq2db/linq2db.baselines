﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConcatTest

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ConcatTest
(
	EntityId Int32,
	Discr    Int32,
	Value    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ConcatTest
(
	EntityId,
	Discr,
	Value
)
VALUES
(1,0,'VBase1'),
(2,0,'VBase2'),
(3,0,'VBase3'),
(10,1,'Derived1'),
(20,1,'Derived2'),
(30,1,'Derived3')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	0 as __projection__set_id__,
	t1.Discr,
	t1.EntityId,
	t1.Value as Value_1
FROM
	ConcatTest t1
WHERE
	t1.Discr <> 1
UNION ALL
SELECT
	1 as __projection__set_id__,
	t2.Discr as Discr,
	t2.EntityId as EntityId,
	t2.Value as Value_1
FROM
	ConcatTest t2
WHERE
	t2.Discr = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConcatTest

