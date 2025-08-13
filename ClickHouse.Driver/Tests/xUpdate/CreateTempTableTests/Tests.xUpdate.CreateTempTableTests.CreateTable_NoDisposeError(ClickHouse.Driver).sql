BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

