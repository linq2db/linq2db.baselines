BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id        Int32,
	NullValue Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a.Id,
	a.NullValue
FROM
	SampleClass a
WHERE
	(a.Id = 0 AND (a.NullValue = 0 AND a.NullValue IS NOT NULL OR a.NullValue IS NULL) OR a.Id = 1 AND a.NullValue = 1 AND a.NullValue IS NOT NULL OR a.Id = 2 AND a.NullValue = 2 AND a.NullValue IS NOT NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

