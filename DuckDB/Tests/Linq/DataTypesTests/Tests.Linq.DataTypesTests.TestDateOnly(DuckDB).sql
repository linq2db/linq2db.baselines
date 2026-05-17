-- DuckDB
DECLARE $Column  -- Date
SET     $Column = '2020-02-29'::DATE
DECLARE $ColumnNullable  -- Date
SET     $ColumnNullable = '2020-01-01'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r."Column" = $Column AND r.ColumnNullable = $ColumnNullable

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r."Column" = '2020-02-29'::DATE AND r.ColumnNullable = '2020-01-01'::DATE

-- DuckDB

DELETE FROM
	DateOnlyTable t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Date
SET     $Column = '1980-01-01'::DATE
DECLARE $ColumnNullable  -- Date
SET     $ColumnNullable = NULL

INSERT INTO DateOnlyTable
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
DECLARE $Column  -- Date
SET     $Column = '2020-02-29'::DATE
DECLARE $ColumnNullable  -- Date
SET     $ColumnNullable = '2020-01-01'::DATE

INSERT INTO DateOnlyTable
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
	DateOnlyTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	DateOnlyTable t1

-- DuckDB

INSERT INTO DateOnlyTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,'1980-01-01'::DATE,NULL),
(2,'2020-02-29'::DATE,'2020-01-01'::DATE)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	DateOnlyTable t1

-- DuckDB
DECLARE $tableName NVarChar(13) -- String
SET     $tableName = 'DateOnlyTable'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK DateOnlyTable(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

