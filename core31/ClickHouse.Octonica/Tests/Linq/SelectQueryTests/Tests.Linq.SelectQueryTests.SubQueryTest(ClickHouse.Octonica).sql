BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(100))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.Value1,
	t2.Value2
FROM
	(
		SELECT
			addDays(now(), t.Value) as Value1,
			addDays(now(), toInt32(2)) as Value2
		FROM
			SampleClass t
		WHERE
			t.Value = toInt32(1)
		UNION DISTINCT
		SELECT
			t1.Value1 as Value1,
			t1.Value2 as Value2
		FROM
			(
				SELECT
					addDays(now(), toInt32(3)) as Value1,
					addDays(now(), toInt32(4)) as Value2
			) t1
	) t2
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

