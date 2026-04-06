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
	r."Column" = CAST($Column AS DATE) AND r.ColumnNullable = CAST($ColumnNullable AS DATE)

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
DECLARE $ColumnNullable  -- Object
SET     $ColumnNullable = NULL

INSERT INTO DateOnlyTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS DATE),
	CAST($ColumnNullable AS DATE)
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
	CAST($Id AS INTEGER),
	CAST($Column AS DATE),
	CAST($ColumnNullable AS DATE)
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

