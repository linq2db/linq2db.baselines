﻿BeforeExecute
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
INSERT ASYNC BULK SimpleBulkCopyTable(Id)

BeforeExecute
INSERT ASYNC BULK SimpleBulkCopyTable(Id)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(toInt32(3))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

