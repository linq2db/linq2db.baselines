-- DuckDB

INSERT INTO TestTempTable
(
	Id,
	"Value"
)
VALUES
(
	1,
	'value'
)

-- DuckDB

CREATE TABLE IF NOT EXISTS TempTable
(
	Id      INTEGER,
	Renamed VARCHAR,

	PRIMARY KEY (Id)
)

-- DuckDB

INSERT INTO TempTable
(
	Id,
	Renamed
)
SELECT
	t1.Id,
	t1."Value"
FROM
	TestTempTable t1

-- DuckDB

INSERT INTO TestTempTable
(
	Id,
	"Value"
)
VALUES
(
	2,
	'value 2'
)

-- DuckDB

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

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TestTempTable t1
ORDER BY
	t1.Id

-- DuckDB

SELECT
	t1.Id,
	t1.Renamed
FROM
	TempTable t1
ORDER BY
	t1.Id

-- DuckDB

DROP TABLE IF EXISTS TempTable

