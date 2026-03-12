-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DisposableTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DisposableTable

