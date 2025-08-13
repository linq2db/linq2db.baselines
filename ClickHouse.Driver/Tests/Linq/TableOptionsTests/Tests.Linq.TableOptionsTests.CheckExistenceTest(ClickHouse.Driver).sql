BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS DisposableTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS DisposableTable

