BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass c_1
WHERE
	c_1.Value > toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

