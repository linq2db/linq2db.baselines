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

-- DuckDB
DECLARE $tableName NVarChar(9) -- String
SET     $tableName = 'TempTable'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK TempTable(ID)

-- DuckDB

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- DuckDB

DROP TABLE IF EXISTS TempTable

