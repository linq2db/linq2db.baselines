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
	r."Column" = CAST($Column AS BOOLEAN) AND r.ColumnNullable = CAST($ColumnNullable AS BOOLEAN)

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
DECLARE $ColumnNullable  -- Object
SET     $ColumnNullable = NULL

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS BOOLEAN),
	CAST($ColumnNullable AS BOOLEAN)
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
	CAST($Id AS INTEGER),
	CAST($Column AS BOOLEAN),
	CAST($ColumnNullable AS BOOLEAN)
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

