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
	r."Column" = CAST($Column AS UTINYINT) AND r.ColumnNullable = CAST($ColumnNullable AS UTINYINT)

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
DECLARE $ColumnNullable  -- Object
SET     $ColumnNullable = NULL

INSERT INTO ByteTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	CAST($Id AS INTEGER),
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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

