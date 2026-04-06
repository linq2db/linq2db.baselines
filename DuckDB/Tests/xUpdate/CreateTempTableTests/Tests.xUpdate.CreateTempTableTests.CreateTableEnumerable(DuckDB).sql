-- DuckDB

DROP TABLE IF EXISTS TempTable

-- DuckDB

SELECT
	p.ParentID
FROM
	Parent p

-- DuckDB

CREATE TABLE IF NOT EXISTS TempTable
(
	ID INTEGER,

	PRIMARY KEY (ID)
)

INSERT BULK TempTable(ID)

-- DuckDB

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- DuckDB

DROP TABLE IF EXISTS TempTable

