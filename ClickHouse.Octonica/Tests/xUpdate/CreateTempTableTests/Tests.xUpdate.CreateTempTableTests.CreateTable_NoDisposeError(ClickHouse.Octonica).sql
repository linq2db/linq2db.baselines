BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE TempTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

