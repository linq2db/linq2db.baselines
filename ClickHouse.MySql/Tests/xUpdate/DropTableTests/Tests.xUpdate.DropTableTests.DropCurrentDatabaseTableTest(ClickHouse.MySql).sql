-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DropTableTest

-- ClickHouse.MySql ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

INSERT INTO DropTableTest
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
	DropTableTest t1

-- ClickHouse.MySql ClickHouse

DROP TABLE DropTableTest

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1

