-- DuckDB

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- DuckDB

CREATE TEMPORARY TABLE CreateIfNotExistsTable
(
	Id      INTEGER NOT NULL,
	"Value" INTEGER NOT NULL
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	CreateIfNotExistsTable t1

-- DuckDB

CREATE TABLE IF NOT EXISTS CreateIfNotExistsTable
(
	Id      INTEGER NOT NULL,
	"Value" INTEGER NOT NULL
)

-- DuckDB

DROP TABLE IF EXISTS CreateIfNotExistsTable

-- DuckDB

DROP TABLE IF EXISTS CreateIfNotExistsTable

