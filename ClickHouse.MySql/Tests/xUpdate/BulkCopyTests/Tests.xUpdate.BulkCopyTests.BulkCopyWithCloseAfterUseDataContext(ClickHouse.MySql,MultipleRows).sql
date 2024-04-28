BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SimpleBulkCopyTable
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

