BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcatTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ConcatTest
(
	EntityId Int32,
	Discr    Int32,
	Value    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ConcatTest
(
	EntityId,
	Discr,
	Value
)
VALUES
(toInt32(1),toInt32(0),'VBase1'),
(toInt32(2),toInt32(0),'VBase2'),
(toInt32(3),toInt32(0),'VBase3'),
(toInt32(10),toInt32(1),'Derived1'),
(toInt32(20),toInt32(1),'Derived2'),
(toInt32(30),toInt32(1),'Derived3')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.EntityId,
	t1.Discr,
	t1.Value
FROM
	ConcatTest t1
WHERE
	t1.Discr <> toInt32(1)
UNION ALL
SELECT
	t2.EntityId,
	t2.Discr,
	t2.Value
FROM
	ConcatTest t2
WHERE
	t2.Discr = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcatTest

