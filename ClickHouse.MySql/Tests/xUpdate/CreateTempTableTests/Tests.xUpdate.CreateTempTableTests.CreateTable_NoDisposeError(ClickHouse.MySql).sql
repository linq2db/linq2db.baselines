BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

