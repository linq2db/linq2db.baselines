BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(
	toInt32(0),
	'key1'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(
	toInt32(0),
	'key2'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value
FROM
	SampleClass t
WHERE
	t.Value IN ('key1')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

