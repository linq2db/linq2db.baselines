BeforeExecute
--  ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ClickHouseBulkCopyTable

BeforeExecute
--  ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ClickHouseBulkCopyTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK ClickHouseBulkCopyTable(ID)

BeforeExecute
--  ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ClickHouseBulkCopyTable

BeforeExecute
--  ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ClickHouseBulkCopyTable

BeforeExecute
--  ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ClickHouseBulkCopyTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK ClickHouseBulkCopyTable(ID)

BeforeExecute
--  ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ClickHouseBulkCopyTable

