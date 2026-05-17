-- DuckDB

DROP TABLE IF EXISTS TempTable

-- DuckDB

CREATE TEMPORARY TABLE TempTable
(
	ID INTEGER,

	PRIMARY KEY (ID)
)

-- DuckDB

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

-- DuckDB

DROP TABLE IF EXISTS TempTable

-- DuckDB

DROP TABLE TempTable

