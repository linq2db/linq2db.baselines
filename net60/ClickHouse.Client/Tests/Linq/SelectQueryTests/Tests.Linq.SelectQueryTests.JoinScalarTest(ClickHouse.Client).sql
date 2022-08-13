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
(toInt32(1),toInt32(100))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Value,
	s.c1
FROM
	SampleClass t
		INNER JOIN (
			SELECT
				toInt32(1) as c1
		) s ON s.c1 = t.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

