-- DuckDB

DROP TABLE IF EXISTS TestTable

-- DuckDB

CREATE TEMPORARY TABLE TestTable
(
	Id      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (Id)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value",
	t1.Id,
	t1."Value",
	t1.Id,
	t1."Value"
FROM
	TestTable t1

-- DuckDB

DROP TABLE IF EXISTS TestTable

