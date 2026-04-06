-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '01:02:03'::TIME AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(15) -- String
SET     $Column = '01:02:03.000000'
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
	CAST($Column AS TIME),
	CAST($ColumnNullable AS TIME)
)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(15) -- String
SET     $p2 = '01:02:03.000000'
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
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable = CAST($nullableValue AS TIME)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '01:02:03'::TIME AND r.ColumnNullable = '23:59:59.999999'::TIME

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(15) -- String
SET     $Column = '01:02:03.000000'
DECLARE $ColumnNullable NVarChar(15) -- String
SET     $ColumnNullable = '23:59:59.999999'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS TIME),
	CAST($ColumnNullable AS TIME)
)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable = CAST($nullableValue AS TIME)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(15) -- String
SET     $p2 = '01:02:03.000000'
DECLARE $p3 NVarChar(15) -- String
SET     $p3 = '23:59:59.999999'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable = CAST($nullableValue AS TIME)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable = CAST($nullableValue AS TIME)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '01:02:03.000000'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIME) AND r.ColumnNullable = CAST($nullableValue AS TIME)

