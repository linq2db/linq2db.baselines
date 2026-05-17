-- DuckDB
DECLARE $tableName NVarChar(14) -- String
SET     $tableName = 'Issue4460Table'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK Issue4460Table(Id, Code, Name, Surname)

-- DuckDB

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1

