BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

