BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(now(), t.Value),
	addDays(now(), toInt32(2))
FROM
	SampleClass t
WHERE
	t.Value = toInt32(1)
UNION DISTINCT
SELECT
	t1.Value1,
	t1.Value2
FROM
	(
		SELECT
			addDays(now(), toInt32(3)) as Value1,
			addDays(now(), toInt32(4)) as Value2
	) t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	v.Value2
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
	) v

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

