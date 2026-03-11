-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

INSERT INTO CreateIfNotExistsTable
(
	Id,
	Value
)
VALUES
(
	1,
	2
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	CreateIfNotExistsTable t1

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

