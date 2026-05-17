-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE IsTemporaryTable
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	IsTemporaryTable t1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IsTemporaryTable

