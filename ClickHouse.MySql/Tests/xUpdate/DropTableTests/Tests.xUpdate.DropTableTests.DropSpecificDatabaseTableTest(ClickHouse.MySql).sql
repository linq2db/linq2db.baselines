BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO testdb3.DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	testdb3.DropTableTest t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE testdb3.DropTableTest

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	testdb3.DropTableTest t1

