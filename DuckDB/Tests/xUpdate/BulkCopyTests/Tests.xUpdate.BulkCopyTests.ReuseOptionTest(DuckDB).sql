-- DuckDB
DECLARE $tableName NVarChar(6) -- String
SET     $tableName = 'Parent'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK Parent(ParentID, Value1)

-- DuckDB
DECLARE $tableName NVarChar(5) -- String
SET     $tableName = 'Child'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK Child(ParentID, ChildID)

