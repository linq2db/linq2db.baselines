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

INSERT INTO SampleClass
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(1)),
(toInt32(2),toInt32(2)),
(toInt32(3),toInt32(3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass c_1
WHERE
	c_1.Value > toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

