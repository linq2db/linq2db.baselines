-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 0

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	$Value
)
RETURNING 
	ID

-- DuckDB
DECLARE $tableName NVarChar(8) -- String
SET     $tableName = 'AllTypes'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

-- DuckDB

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(200),
(300)

-- DuckDB
DECLARE $lastId  -- Int32
SET     $lastId = 3

SELECT
	t1.ID,
	t1.intDataType
FROM
	AllTypes t1
WHERE
	t1.ID > $lastId
ORDER BY
	t1.ID

-- DuckDB
DECLARE $lastId  -- Int32
SET     $lastId = 3

DELETE FROM
	AllTypes t1
WHERE
	t1.ID >= $lastId

