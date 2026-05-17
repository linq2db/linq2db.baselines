-- DuckDB
DECLARE $Column  -- Byte
SET     $Column = 255
DECLARE $ColumnNullable  -- Byte
SET     $ColumnNullable = 2

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r."Column" = $Column AND r.ColumnNullable = $ColumnNullable

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r."Column" = 255 AND r.ColumnNullable = 2

-- DuckDB

DELETE FROM
	ByteTable t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Byte
SET     $Column = 1
DECLARE $ColumnNullable  -- Byte
SET     $ColumnNullable = NULL

INSERT INTO ByteTable
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
DECLARE $Column  -- Byte
SET     $Column = 255
DECLARE $ColumnNullable  -- Byte
SET     $ColumnNullable = 2

INSERT INTO ByteTable
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
	ByteTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	ByteTable t1

-- DuckDB

INSERT INTO ByteTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,1,NULL),
(2,255,2)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	ByteTable t1

-- DuckDB
DECLARE $tableName NVarChar(9) -- String
SET     $tableName = 'ByteTable'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK ByteTable(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

