BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE TempTable

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TempTable

