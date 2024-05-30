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
INSERT INTO SimpleBulkCopyTable(Id) VALUES

BeforeExecute
INSERT INTO SimpleBulkCopyTable(Id) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	3
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

