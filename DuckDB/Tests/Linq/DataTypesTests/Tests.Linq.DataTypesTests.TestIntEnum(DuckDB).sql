-- DuckDB
DECLARE $Column  -- Int32
SET     $Column = 2
DECLARE $ColumnNullable  -- Int32
SET     $ColumnNullable = 3

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r."Column" = $Column AND r.ColumnNullable = $ColumnNullable

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r."Column" = 2 AND r.ColumnNullable = 3

-- DuckDB

DELETE FROM
	IntEnumTable t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int32
SET     $Column = 1
DECLARE $ColumnNullable  -- Int32
SET     $ColumnNullable = NULL

INSERT INTO IntEnumTable
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
DECLARE $Column  -- Int32
SET     $Column = 2
DECLARE $ColumnNullable  -- Int32
SET     $ColumnNullable = 3

INSERT INTO IntEnumTable
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
	IntEnumTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	IntEnumTable t1

-- DuckDB

INSERT INTO IntEnumTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,1,NULL),
(2,2,3)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	IntEnumTable t1

-- DuckDB
DECLARE $tableName NVarChar(12) -- String
SET     $tableName = 'IntEnumTable'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK IntEnumTable(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

