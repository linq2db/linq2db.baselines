-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE IsTemporaryTable
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	IsTemporaryTable t1

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IsTemporaryTable

