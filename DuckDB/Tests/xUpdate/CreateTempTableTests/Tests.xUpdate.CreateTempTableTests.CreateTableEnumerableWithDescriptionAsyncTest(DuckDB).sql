-- DuckDB

DROP TABLE IF EXISTS TempTable

-- DuckDB

CREATE TABLE IF NOT EXISTS TempTable
(
	Name VARCHAR,

	PRIMARY KEY (Name)
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

INSERT BULK TempTable(Name)

-- DuckDB

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

-- DuckDB

DROP TABLE IF EXISTS TempTable

