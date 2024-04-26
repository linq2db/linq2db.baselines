BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS SimpleBulkCopyTable
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

