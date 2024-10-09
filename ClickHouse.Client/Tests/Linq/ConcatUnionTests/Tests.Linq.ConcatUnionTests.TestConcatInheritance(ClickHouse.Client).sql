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
	CASE
		WHEN t3.projection__set_id__ = 0 THEN true
		ELSE false
	END,
	CASE
		WHEN t3.Discr = 1 THEN true
		ELSE false
	END,
	t3.EntityId,
	t3.Discr,
	t3.Value_1
FROM
	(
		SELECT
			t1.EntityId as EntityId,
			t1.Discr as Discr,
			t1.Value as Value_1,
			toInt32(0) as projection__set_id__
		FROM
			ConcatTest t1
		WHERE
			t1.Discr <> 1
		UNION ALL
		SELECT
			t2.EntityId as EntityId,
			t2.Discr as Discr,
			t2.Value as Value_1,
			toInt32(1) as projection__set_id__
		FROM
			ConcatTest t2
		WHERE
			t2.Discr = 1
	) t3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcatTest

