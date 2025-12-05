-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Id      Int32,
	Renamed Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestTempTable t1
ORDER BY
	t1.Id

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Renamed
FROM
	TempTable t1
ORDER BY
	t1.Id

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

