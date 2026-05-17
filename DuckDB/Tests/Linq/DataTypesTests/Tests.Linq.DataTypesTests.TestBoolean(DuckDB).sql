-- DuckDB
DECLARE $Column  -- Boolean
SET     $Column = False
DECLARE $ColumnNullable  -- Boolean
SET     $ColumnNullable = True

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r."Column" = $Column AND r.ColumnNullable = $ColumnNullable

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r."Column" = False AND r.ColumnNullable = True

-- DuckDB

DELETE FROM
	BooleanTable t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Boolean
SET     $Column = True
DECLARE $ColumnNullable  -- Boolean
SET     $ColumnNullable = NULL

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Column  -- Boolean
SET     $Column = False
DECLARE $ColumnNullable  -- Boolean
SET     $ColumnNullable = True

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	BooleanTable t1

-- DuckDB

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,True,NULL),
(2,False,True)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	BooleanTable t1

-- DuckDB
DECLARE $tableName NVarChar(12) -- String
SET     $tableName = 'BooleanTable'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK BooleanTable(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

