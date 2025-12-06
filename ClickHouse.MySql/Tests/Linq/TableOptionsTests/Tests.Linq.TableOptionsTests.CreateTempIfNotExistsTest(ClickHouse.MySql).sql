-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

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

