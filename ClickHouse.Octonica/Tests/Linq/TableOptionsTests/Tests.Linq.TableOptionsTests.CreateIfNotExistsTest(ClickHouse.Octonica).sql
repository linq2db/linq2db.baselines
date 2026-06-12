-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	CreateIfNotExistsTable t1

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CreateIfNotExistsTable

