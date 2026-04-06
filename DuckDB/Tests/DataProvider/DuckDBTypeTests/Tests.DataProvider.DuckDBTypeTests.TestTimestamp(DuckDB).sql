-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2020-02-29 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2020-02-29'::DATE AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(26) -- String
SET     $Column = '2020-02-29 00:00:00.000000'
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
	CAST($Column AS TIMESTAMP),
	CAST($ColumnNullable AS TIMESTAMP)
)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2020-02-29 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(26) -- String
SET     $p2 = '2020-02-29 00:00:00.000000'
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
DECLARE $value NVarChar(26) -- String
SET     $value = '2020-02-29 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2020-02-29 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2020-02-29 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '1970-01-01'::DATE AND r.ColumnNullable = '2100-12-31 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(26) -- String
SET     $Column = '1970-01-01 00:00:00.000000'
DECLARE $ColumnNullable NVarChar(26) -- String
SET     $ColumnNullable = '2100-12-31 23:59:59.999999'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS TIMESTAMP),
	CAST($ColumnNullable AS TIMESTAMP)
)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(26) -- String
SET     $p2 = '1970-01-01 00:00:00.000000'
DECLARE $p3 NVarChar(26) -- String
SET     $p3 = '2100-12-31 23:59:59.999999'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 23:59:59.999999'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2100-12-31 23:59:59.999999'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2100-12-31 23:59:59.999999'::TIMESTAMP AND
	r.ColumnNullable = '1970-01-01'::DATE

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(26) -- String
SET     $Column = '2100-12-31 23:59:59.999999'
DECLARE $ColumnNullable NVarChar(26) -- String
SET     $ColumnNullable = '1970-01-01 00:00:00.000000'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS TIMESTAMP),
	CAST($ColumnNullable AS TIMESTAMP)
)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2100-12-31 23:59:59.999999'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(26) -- String
SET     $p2 = '2100-12-31 23:59:59.999999'
DECLARE $p3 NVarChar(26) -- String
SET     $p3 = '1970-01-01 00:00:00.000000'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2100-12-31 23:59:59.999999'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2100-12-31 23:59:59.999999'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '2100-12-31 23:59:59.999999'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '1970-01-01 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS TIMESTAMP) AND r.ColumnNullable = CAST($nullableValue AS TIMESTAMP)

