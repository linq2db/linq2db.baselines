-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(2) -- String
SET     $Column = '{}'
DECLARE $ColumnNullable  -- Object
SET     $ColumnNullable = NULL

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS VARCHAR),
	CAST($ColumnNullable AS VARCHAR)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(2) -- String
SET     $p2 = '{}'
DECLARE $p3  -- Object
SET     $p3 = NULL

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(12) -- String
SET     $Column = '{"key": 123}'
DECLARE $ColumnNullable NVarChar(15) -- String
SET     $ColumnNullable = '{"arr": [1, 2]}'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS VARCHAR),
	CAST($ColumnNullable AS VARCHAR)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(12) -- String
SET     $p2 = '{"key": 123}'
DECLARE $p3 NVarChar(15) -- String
SET     $p3 = '{"arr": [1, 2]}'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	"TypeTable`2" t1

