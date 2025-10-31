-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE IsTemporaryTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	IsTemporaryTable t1

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS IsTemporaryTable

