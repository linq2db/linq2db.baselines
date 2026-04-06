-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = False AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Boolean
SET     $Column = False
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
	CAST($Column AS BOOLEAN),
	CAST($ColumnNullable AS BOOLEAN)
)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Boolean
SET     $p2 = False
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
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = True AND r.ColumnNullable = False

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Boolean
SET     $Column = True
DECLARE $ColumnNullable  -- Boolean
SET     $ColumnNullable = False

INSERT INTO "TypeTable`2"
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
DECLARE $value  -- Boolean
SET     $value = True
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Boolean
SET     $p2 = True
DECLARE $p3  -- Boolean
SET     $p3 = False

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = True
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = False

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = True

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = False AND r.ColumnNullable = True

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Boolean
SET     $Column = False
DECLARE $ColumnNullable  -- Boolean
SET     $ColumnNullable = True

INSERT INTO "TypeTable`2"
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
DECLARE $value  -- Boolean
SET     $value = False
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = True

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Boolean
SET     $p2 = False
DECLARE $p3  -- Boolean
SET     $p3 = True

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = True

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = True

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Boolean
SET     $value = False
DECLARE $nullableValue  -- Boolean
SET     $nullableValue = True

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS BOOLEAN) AND r.ColumnNullable = CAST($nullableValue AS BOOLEAN)

