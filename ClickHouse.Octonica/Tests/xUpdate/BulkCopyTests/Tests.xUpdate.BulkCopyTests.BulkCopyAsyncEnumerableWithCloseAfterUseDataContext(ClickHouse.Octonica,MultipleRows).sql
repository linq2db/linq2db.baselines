BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SimpleBulkCopyTable
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

