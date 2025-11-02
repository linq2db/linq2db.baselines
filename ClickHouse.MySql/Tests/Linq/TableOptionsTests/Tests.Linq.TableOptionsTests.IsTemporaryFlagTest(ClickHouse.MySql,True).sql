-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE IsTemporaryTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	IsTemporaryTable t1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IsTemporaryTable

