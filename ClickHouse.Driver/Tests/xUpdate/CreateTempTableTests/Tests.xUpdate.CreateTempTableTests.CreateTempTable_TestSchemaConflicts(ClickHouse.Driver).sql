-- ClickHouse.Driver ClickHouse

INSERT INTO TestTempTable
(
	Id,
	Value
)
VALUES
(
	1,
	'value'
)

-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Id      Int32,
	Renamed Nullable(String)
)
ENGINE = Memory()

-- ClickHouse.Driver ClickHouse

INSERT INTO TempTable
(
	Id,
	Renamed
)
SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1

-- ClickHouse.Driver ClickHouse

INSERT INTO TestTempTable
(
	Id,
	Value
)
VALUES
(
	2,
	'value 2'
)

-- ClickHouse.Driver ClickHouse

INSERT INTO TempTable
(
	Id,
	Renamed
)
VALUES
(
	2,
	'renamed 2'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Renamed
FROM
	TempTable t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

