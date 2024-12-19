BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcatTest

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConcatTest
(
	EntityId Int32,
	Discr    Int32,
	Value    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.EntityId,
	t1.Discr,
	t1.Value as Value_1,
	toInt32(NULL) as EntityId_1,
	toInt32(NULL) as Discr_1,
	toString(NULL) as Value_2
FROM
	ConcatTest t1
UNION ALL
SELECT
	toInt32(NULL) as EntityId,
	toInt32(NULL) as Discr,
	toString(NULL) as Value_1,
	t2.EntityId as EntityId_1,
	t2.Discr as Discr_1,
	t2.Value as Value_2
FROM
	ConcatTest t2
WHERE
	t2.Discr = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcatTest

