-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt16
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt16
SET     $p2 = 0
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
DECLARE $value  -- UInt16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 65535

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt16
SET     $Column = 0
DECLARE $ColumnNullable  -- UInt16
SET     $ColumnNullable = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt16
SET     $p2 = 0
DECLARE $p3  -- UInt16
SET     $p3 = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 65535
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 65535 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt16
SET     $Column = 65535
DECLARE $ColumnNullable  -- UInt16
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 65535
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt16
SET     $p2 = 65535
DECLARE $p3  -- UInt16
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 65535
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 65535
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 65535
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Byte
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Byte
SET     $p2 = 0
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
DECLARE $value  -- Byte
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 255
DECLARE $nullableValue  -- Byte
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 255 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Byte
SET     $Column = 255
DECLARE $ColumnNullable  -- Byte
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 255
DECLARE $nullableValue  -- Byte
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Byte
SET     $p2 = 255
DECLARE $p3  -- Byte
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 255
DECLARE $nullableValue  -- Byte
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 0
DECLARE $nullableValue  -- Byte
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 255

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Byte
SET     $Column = 0
DECLARE $ColumnNullable  -- Byte
SET     $ColumnNullable = 255

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 0
DECLARE $nullableValue  -- Byte
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Byte
SET     $p2 = 0
DECLARE $p3  -- Byte
SET     $p3 = 255

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Byte
SET     $value = 0
DECLARE $nullableValue  -- Byte
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt32
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt32
SET     $p2 = 0
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
DECLARE $value  -- UInt32
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 65535
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 65535 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt32
SET     $Column = 65535
DECLARE $ColumnNullable  -- UInt32
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 65535
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt32
SET     $p2 = 65535
DECLARE $p3  -- UInt32
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 65535
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 0
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 65535

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt32
SET     $Column = 0
DECLARE $ColumnNullable  -- UInt32
SET     $ColumnNullable = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 0
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt32
SET     $p2 = 0
DECLARE $p3  -- UInt32
SET     $p3 = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 0
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt64
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt64
SET     $p2 = 0
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
DECLARE $value  -- UInt64
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 65535
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 65535 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt64
SET     $Column = 65535
DECLARE $ColumnNullable  -- UInt64
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 65535
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt64
SET     $p2 = 65535
DECLARE $p3  -- UInt64
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 65535
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 0
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 65535

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- UInt64
SET     $Column = 0
DECLARE $ColumnNullable  -- UInt64
SET     $ColumnNullable = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 0
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt64
SET     $p2 = 0
DECLARE $p3  -- UInt64
SET     $p3 = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 0
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int16
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 0
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
DECLARE $value  -- Int16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 127
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 127 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int16
SET     $Column = 127
DECLARE $ColumnNullable  -- Int16
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 127
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 127
DECLARE $p3  -- Int16
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 127
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 127

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 127

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int16
SET     $Column = 0
DECLARE $ColumnNullable  -- Int16
SET     $ColumnNullable = 127

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 127

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 0
DECLARE $p3  -- Int16
SET     $p3 = 127

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 127

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int16
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 0
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
DECLARE $value  -- Int16
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 32767
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 32767 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int16
SET     $Column = 32767
DECLARE $ColumnNullable  -- Int16
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 32767
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 32767
DECLARE $p3  -- Int16
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 32767
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 32767

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 32767

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int16
SET     $Column = 0
DECLARE $ColumnNullable  -- Int16
SET     $ColumnNullable = 32767

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 32767

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 0
DECLARE $p3  -- Int16
SET     $p3 = 32767

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 32767

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int32
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int32
SET     $p2 = 0
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
DECLARE $value  -- Int32
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 65535
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 65535 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int32
SET     $Column = 65535
DECLARE $ColumnNullable  -- Int32
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 65535
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int32
SET     $p2 = 65535
DECLARE $p3  -- Int32
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 65535
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 0
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 65535

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int32
SET     $Column = 0
DECLARE $ColumnNullable  -- Int32
SET     $ColumnNullable = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 0
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int32
SET     $p2 = 0
DECLARE $p3  -- Int32
SET     $p3 = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 0
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int64
SET     $Column = 0
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int64
SET     $p2 = 0
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
DECLARE $value  -- Int64
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 65535
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 65535 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int64
SET     $Column = 65535
DECLARE $ColumnNullable  -- Int64
SET     $ColumnNullable = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 65535
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int64
SET     $p2 = 65535
DECLARE $p3  -- Int64
SET     $p3 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 65535
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 0
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 65535

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Int64
SET     $Column = 0
DECLARE $ColumnNullable  -- Int64
SET     $ColumnNullable = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 0
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int64
SET     $p2 = 0
DECLARE $p3  -- Int64
SET     $p3 = 65535

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 0
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 65535

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
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
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 65535 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(5) -- String
SET     $Column = '65535'
DECLARE $ColumnNullable NVarChar(1) -- String
SET     $ColumnNullable = '0'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(5) -- String
SET     $p2 = '65535'
DECLARE $p3 NVarChar(1) -- String
SET     $p3 = '0'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 65535

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
DECLARE $ColumnNullable NVarChar(5) -- String
SET     $ColumnNullable = '65535'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
DECLARE $p3 NVarChar(5) -- String
SET     $p3 = '65535'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '0'::FLOAT AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
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
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '65535'::FLOAT AND r.ColumnNullable = '0'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(5) -- String
SET     $Column = '65535'
DECLARE $ColumnNullable NVarChar(1) -- String
SET     $ColumnNullable = '0'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(5) -- String
SET     $p2 = '65535'
DECLARE $p3 NVarChar(1) -- String
SET     $p3 = '0'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '0'::FLOAT AND r.ColumnNullable = '65535'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
DECLARE $ColumnNullable NVarChar(5) -- String
SET     $ColumnNullable = '65535'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
DECLARE $p3 NVarChar(5) -- String
SET     $p3 = '65535'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
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
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
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
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 65535 AND r.ColumnNullable = 0

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(5) -- String
SET     $Column = '65535'
DECLARE $ColumnNullable NVarChar(1) -- String
SET     $ColumnNullable = '0'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(5) -- String
SET     $p2 = '65535'
DECLARE $p3 NVarChar(1) -- String
SET     $p3 = '0'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(5) -- String
SET     $value = '65535'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 0 AND r.ColumnNullable = 65535

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
DECLARE $ColumnNullable NVarChar(5) -- String
SET     $ColumnNullable = '65535'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS USMALLINT),
	CAST($ColumnNullable AS USMALLINT)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
DECLARE $p3 NVarChar(5) -- String
SET     $p3 = '65535'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(5) -- String
SET     $nullableValue = '65535'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS USMALLINT) AND r.ColumnNullable = CAST($nullableValue AS USMALLINT)

