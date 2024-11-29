BeforeExecute
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
	t.EntityId,
	t.Discr,
	t.Value as Value_1,
	toInt32(NULL) as EntityId_1,
	toInt32(NULL) as Discr_1,
	toString(NULL) as Value_2
FROM
	ConcatTest t
WHERE
	t.Discr = 0
UNION ALL
SELECT
	toInt32(NULL) as EntityId,
	toInt32(NULL) as Discr,
	toString(NULL) as Value_1,
	t1.EntityId as EntityId_1,
	t1.Discr as Discr_1,
	t1.Value as Value_2
FROM
	ConcatTest t1
WHERE
	t1.Discr = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConcatTest

