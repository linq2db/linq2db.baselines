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
(1,1),
(2,2),
(3,3)

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass t2
WHERE
	t2.Value > 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.Value
FROM
	SampleClass t,
	SampleClass t2
WHERE
	t2.Value > 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass

