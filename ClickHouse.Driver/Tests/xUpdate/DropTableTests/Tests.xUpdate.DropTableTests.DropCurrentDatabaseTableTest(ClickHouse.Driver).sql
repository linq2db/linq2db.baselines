-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS DropTableTest

-- ClickHouse.Driver ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1

-- ClickHouse.Driver ClickHouse

DROP TABLE DropTableTest

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1

