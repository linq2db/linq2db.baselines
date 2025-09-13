BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS DisposableTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS DisposableTable

