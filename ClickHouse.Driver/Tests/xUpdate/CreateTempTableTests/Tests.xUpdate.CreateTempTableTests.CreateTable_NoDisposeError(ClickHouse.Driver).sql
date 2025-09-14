BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

