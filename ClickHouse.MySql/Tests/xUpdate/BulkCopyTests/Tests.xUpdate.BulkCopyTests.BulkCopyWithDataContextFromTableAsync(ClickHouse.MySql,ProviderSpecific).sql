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
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(toInt32(1))

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(toInt32(2))

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(toInt32(3))

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(toInt32(10))

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(toInt32(20))

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(toInt32(30))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SimpleBulkCopyTable

