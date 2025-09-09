BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ID
FROM
	DropTableTest t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE DropTableTest

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ID
FROM
	DropTableTest t1

