-- DuckDB

DELETE FROM
	Parent c_1
WHERE
	c_1.ParentID >= 1000

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

DELETE FROM
	Parent p
WHERE
	p.ParentID = 1000 AND p.Value1 IS NULL OR p.ParentID = 1001 AND p.Value1 IS NULL

-- DuckDB

DELETE FROM
	Parent c_1
WHERE
	c_1.ParentID >= 1000

