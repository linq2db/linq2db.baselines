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
DECLARE $Column Binary(1)
SET     $Column = '\x00'::BLOB
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
	CAST($Column AS BLOB),
	CAST($ColumnNullable AS BLOB)
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
DECLARE $p2 Binary(1)
SET     $p2 = '\x00'::BLOB
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
DECLARE $Column Binary(6)
SET     $Column = '\x00\x01\x02\x03\x04\x00'::BLOB
DECLARE $ColumnNullable Binary(3)
SET     $ColumnNullable = '\xFF\xFE\xFD'::BLOB

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS BLOB),
	CAST($ColumnNullable AS BLOB)
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
DECLARE $p2 Binary(6)
SET     $p2 = '\x00\x01\x02\x03\x04\x00'::BLOB
DECLARE $p3 Binary(3)
SET     $p3 = '\xFF\xFE\xFD'::BLOB

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

