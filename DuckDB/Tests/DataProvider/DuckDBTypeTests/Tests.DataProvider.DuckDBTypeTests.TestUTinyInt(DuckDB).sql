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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 255
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- UInt16
SET     $Column = 255
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 255
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt16
SET     $p2 = 255
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
SET     $value = 255
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- UInt16
SET     $Column = 0
DECLARE $ColumnNullable  -- UInt16
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt16
SET     $p2 = 0
DECLARE $p3  -- UInt16
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
DECLARE $value  -- UInt16
SET     $value = 0
DECLARE $nullableValue  -- UInt16
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 255
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- UInt32
SET     $Column = 255
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 255
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt32
SET     $p2 = 255
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
SET     $value = 255
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 0
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- UInt32
SET     $Column = 0
DECLARE $ColumnNullable  -- UInt32
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- UInt32
SET     $value = 0
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt32
SET     $p2 = 0
DECLARE $p3  -- UInt32
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
DECLARE $value  -- UInt32
SET     $value = 0
DECLARE $nullableValue  -- UInt32
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 255
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- UInt64
SET     $Column = 255
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 255
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt64
SET     $p2 = 255
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
SET     $value = 255
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 0
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- UInt64
SET     $Column = 0
DECLARE $ColumnNullable  -- UInt64
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- UInt64
SET     $value = 0
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- UInt64
SET     $p2 = 0
DECLARE $p3  -- UInt64
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
DECLARE $value  -- UInt64
SET     $value = 0
DECLARE $nullableValue  -- UInt64
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 255
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- Int16
SET     $Column = 255
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 255
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 255
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
SET     $value = 255
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- Int16
SET     $Column = 0
DECLARE $ColumnNullable  -- Int16
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int16
SET     $p2 = 0
DECLARE $p3  -- Int16
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
DECLARE $value  -- Int16
SET     $value = 0
DECLARE $nullableValue  -- Int16
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 255
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- Int32
SET     $Column = 255
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 255
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int32
SET     $p2 = 255
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
SET     $value = 255
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 0
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- Int32
SET     $Column = 0
DECLARE $ColumnNullable  -- Int32
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- Int32
SET     $value = 0
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int32
SET     $p2 = 0
DECLARE $p3  -- Int32
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
DECLARE $value  -- Int32
SET     $value = 0
DECLARE $nullableValue  -- Int32
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 255
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- Int64
SET     $Column = 255
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 255
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int64
SET     $p2 = 255
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
SET     $value = 255
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 0
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column  -- Int64
SET     $Column = 0
DECLARE $ColumnNullable  -- Int64
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value  -- Int64
SET     $value = 0
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Int64
SET     $p2 = 0
DECLARE $p3  -- Int64
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
DECLARE $value  -- Int64
SET     $value = 0
DECLARE $nullableValue  -- Int64
SET     $nullableValue = 255

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column NVarChar(3) -- String
SET     $Column = '255'
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(3) -- String
SET     $p2 = '255'
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
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
DECLARE $ColumnNullable NVarChar(3) -- String
SET     $ColumnNullable = '255'

INSERT INTO "TypeTable`2"
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
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
DECLARE $p3 NVarChar(3) -- String
SET     $p3 = '255'

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
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '255'::FLOAT AND r.ColumnNullable = '0'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(3) -- String
SET     $Column = '255'
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(3) -- String
SET     $p2 = '255'
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
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '0'::FLOAT AND r.ColumnNullable = '255'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
DECLARE $ColumnNullable NVarChar(3) -- String
SET     $ColumnNullable = '255'

INSERT INTO "TypeTable`2"
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
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
DECLARE $p3 NVarChar(3) -- String
SET     $p3 = '255'

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
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column NVarChar(3) -- String
SET     $Column = '255'
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
	CAST($Column AS UTINYINT),
	CAST($ColumnNullable AS UTINYINT)
)

-- DuckDB
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(3) -- String
SET     $p2 = '255'
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
DECLARE $value NVarChar(3) -- String
SET     $value = '255'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

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
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
DECLARE $ColumnNullable NVarChar(3) -- String
SET     $ColumnNullable = '255'

INSERT INTO "TypeTable`2"
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
DECLARE $value NVarChar(1) -- String
SET     $value = '0'
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
DECLARE $p3 NVarChar(3) -- String
SET     $p3 = '255'

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
DECLARE $nullableValue NVarChar(3) -- String
SET     $nullableValue = '255'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS UTINYINT) AND r.ColumnNullable = CAST($nullableValue AS UTINYINT)

