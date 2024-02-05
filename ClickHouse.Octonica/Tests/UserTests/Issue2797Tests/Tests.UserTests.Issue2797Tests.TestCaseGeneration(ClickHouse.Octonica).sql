BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id    Int32,
	Value Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN e.Value BETWEEN toInt32(2) AND toInt32(5)
			THEN toInt32(0)
		ELSE toInt32(1)
	END
FROM
	SampleClass e

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

