BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id        Int32,
	NullValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a.Id,
	a.NullValue
FROM
	SampleClass a
WHERE
	(a.Id = toInt32(0) AND Coalesce(a.NullValue, toInt32(0)) = toInt32(0) OR a.Id = toInt32(1) AND Coalesce(a.NullValue, toInt32(0)) = toInt32(1) OR a.Id = toInt32(2) AND Coalesce(a.NullValue, toInt32(0)) = toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

