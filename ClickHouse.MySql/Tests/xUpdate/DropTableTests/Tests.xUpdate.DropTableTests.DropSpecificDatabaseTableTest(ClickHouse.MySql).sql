-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DropTableTest

-- ClickHouse.MySql ClickHouse

SELECT
	currentDatabase()
FROM
	LinqDataTypes t1
LIMIT 1

-- ClickHouse.MySql ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

INSERT INTO testdb3.DropTableTest
(
	ID
)
VALUES
(
	123
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	testdb3.DropTableTest t1

-- ClickHouse.MySql ClickHouse

DROP TABLE testdb3.DropTableTest

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	testdb3.DropTableTest t1

