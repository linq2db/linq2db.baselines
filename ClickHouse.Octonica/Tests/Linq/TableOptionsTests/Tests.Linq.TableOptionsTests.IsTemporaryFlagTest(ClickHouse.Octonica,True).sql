-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE IsTemporaryTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	IsTemporaryTable t1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IsTemporaryTable

