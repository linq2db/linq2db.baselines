-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '0001-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '0001-01-01 00:00:00+00'::TIMESTAMPTZ AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(32) -- String
SET     $Column = '0001-01-01 00:00:00.000000+00:00'
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
	CAST($Column AS TIMESTAMPTZ),
	CAST($ColumnNullable AS TIMESTAMPTZ)
)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '0001-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(32) -- String
SET     $p2 = '0001-01-01 00:00:00.000000+00:00'
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
DECLARE $value NVarChar(32) -- String
SET     $value = '0001-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '0001-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '0001-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '1970-01-01 00:00:00.000000+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '1970-01-01 00:00:00+00'::TIMESTAMPTZ AND
	r.ColumnNullable = '2100-12-31 23:59:59.999999+00'::TIMESTAMPTZ

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(32) -- String
SET     $Column = '1970-01-01 00:00:00.000000+00:00'
DECLARE $ColumnNullable NVarChar(32) -- String
SET     $ColumnNullable = '2100-12-31 23:59:59.999999+00:00'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS TIMESTAMPTZ),
	CAST($ColumnNullable AS TIMESTAMPTZ)
)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '1970-01-01 00:00:00.000000+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(32) -- String
SET     $p2 = '1970-01-01 00:00:00.000000+00:00'
DECLARE $p3 NVarChar(32) -- String
SET     $p3 = '2100-12-31 23:59:59.999999+00:00'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '1970-01-01 00:00:00.000000+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '1970-01-01 00:00:00.000000+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '1970-01-01 00:00:00.000000+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2100-12-31 23:59:59.999999+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2100-12-31 23:59:59.999999+00'::TIMESTAMPTZ AND
	r.ColumnNullable = '1970-01-01 00:00:00+00'::TIMESTAMPTZ

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(32) -- String
SET     $Column = '2100-12-31 23:59:59.999999+00:00'
DECLARE $ColumnNullable NVarChar(32) -- String
SET     $ColumnNullable = '1970-01-01 00:00:00.000000+00:00'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS TIMESTAMPTZ),
	CAST($ColumnNullable AS TIMESTAMPTZ)
)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2100-12-31 23:59:59.999999+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(32) -- String
SET     $p2 = '2100-12-31 23:59:59.999999+00:00'
DECLARE $p3 NVarChar(32) -- String
SET     $p3 = '1970-01-01 00:00:00.000000+00:00'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2100-12-31 23:59:59.999999+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2100-12-31 23:59:59.999999+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2100-12-31 23:59:59.999999+00:00'
DECLARE $nullableValue NVarChar(32) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000+00:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMPTZ)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2024-06-15 12:00:00.000000+03:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2024-06-15 09:00:00+00'::TIMESTAMPTZ AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(32) -- String
SET     $Column = '2024-06-15 12:00:00.000000+03:00'
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
	CAST($Column AS TIMESTAMPTZ),
	CAST($ColumnNullable AS TIMESTAMPTZ)
)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2024-06-15 12:00:00.000000+03:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(32) -- String
SET     $p2 = '2024-06-15 12:00:00.000000+03:00'
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
DECLARE $value NVarChar(32) -- String
SET     $value = '2024-06-15 12:00:00.000000+03:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2024-06-15 12:00:00.000000+03:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(32) -- String
SET     $value = '2024-06-15 12:00:00.000000+03:00'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMPTZ) AND r.ColumnNullable IS NULL

