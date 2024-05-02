BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN e.Value BETWEEN 2 AND 5 THEN 0
		ELSE 1
	END
FROM
	SampleClass e

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SampleClass

