-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	CreateIfNotExistsTable t1

-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

