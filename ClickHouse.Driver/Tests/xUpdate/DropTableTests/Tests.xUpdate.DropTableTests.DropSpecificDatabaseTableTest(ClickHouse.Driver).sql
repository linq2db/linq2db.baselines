BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO testdb2.DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID
FROM
	testdb2.DropTableTest t1

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE testdb2.DropTableTest

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID
FROM
	testdb2.DropTableTest t1

