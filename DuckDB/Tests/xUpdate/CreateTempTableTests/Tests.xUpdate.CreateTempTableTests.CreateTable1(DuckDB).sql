-- DuckDB

DROP TABLE IF EXISTS TempTable

-- DuckDB

CREATE TABLE IF NOT EXISTS TempTable
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

SELECT
	t1.ID
FROM
	TempTable t1

-- DuckDB

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- DuckDB

DROP TABLE IF EXISTS TempTable

