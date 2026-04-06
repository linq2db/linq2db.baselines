-- DuckDB

DROP TABLE IF EXISTS TempTable

-- DuckDB

CREATE TEMPORARY TABLE IF NOT EXISTS TempTable
(
	Name VARCHAR(20),

	PRIMARY KEY (Name)
)

INSERT BULK TempTable(Name)

-- DuckDB

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

-- DuckDB

DROP TABLE IF EXISTS TempTable

