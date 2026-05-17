-- DuckDB

CREATE TEMPORARY TABLE IsTemporaryTable
(
	Id      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (Id)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	IsTemporaryTable t1

-- DuckDB

DROP TABLE IF EXISTS IsTemporaryTable

