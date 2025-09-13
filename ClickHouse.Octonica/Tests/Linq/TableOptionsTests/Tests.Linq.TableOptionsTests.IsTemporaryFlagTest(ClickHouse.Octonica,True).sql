BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE IsTemporaryTable
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	IsTemporaryTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IsTemporaryTable

