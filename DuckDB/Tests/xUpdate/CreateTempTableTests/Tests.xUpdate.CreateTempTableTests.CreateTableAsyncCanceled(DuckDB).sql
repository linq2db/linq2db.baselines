-- DuckDB

DROP TABLE IF EXISTS TempTable

-- DuckDB

SELECT
	p.ParentID
FROM
	Parent p

-- DuckDB

CREATE TEMPORARY TABLE TempTable
(
	ID INTEGER,

	PRIMARY KEY (ID)
)

-- DuckDB

DROP TABLE TempTable

