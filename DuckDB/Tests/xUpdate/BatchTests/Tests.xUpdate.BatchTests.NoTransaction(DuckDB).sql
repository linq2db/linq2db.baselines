-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 2111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 3111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 4111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

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
DECLARE $ParentID  -- Int32
SET     $ParentID = 1111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 2111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 3111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 4111

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

