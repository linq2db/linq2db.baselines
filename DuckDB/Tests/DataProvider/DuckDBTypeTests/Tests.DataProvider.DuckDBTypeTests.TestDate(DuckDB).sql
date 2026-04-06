-- DuckDB
DECLARE $value  -- Date
SET     $value = '2020-02-29'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

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
DECLARE $Column  -- Date
SET     $Column = '2020-02-29'::DATE
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
	CAST($Column AS DATE),
	CAST($ColumnNullable AS DATE)
)

-- DuckDB
DECLARE $value  -- Date
SET     $value = '2020-02-29'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Date
SET     $p2 = '2020-02-29'::DATE
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
DECLARE $value  -- Date
SET     $value = '2020-02-29'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Date
SET     $value = '2020-02-29'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Date
SET     $value = '2020-02-29'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Date
SET     $value = '1970-01-01'::DATE
DECLARE $nullableValue  -- Date
SET     $nullableValue = '2100-12-31'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '1970-01-01'::DATE AND r.ColumnNullable = '2100-12-31'::DATE

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Date
SET     $Column = '1970-01-01'::DATE
DECLARE $ColumnNullable  -- Date
SET     $ColumnNullable = '2100-12-31'::DATE

INSERT INTO "TypeTable`2"
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
DECLARE $value  -- Date
SET     $value = '1970-01-01'::DATE
DECLARE $nullableValue  -- Date
SET     $nullableValue = '2100-12-31'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Date
SET     $p2 = '1970-01-01'::DATE
DECLARE $p3  -- Date
SET     $p3 = '2100-12-31'::DATE

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Date
SET     $value = '1970-01-01'::DATE
DECLARE $nullableValue  -- Date
SET     $nullableValue = '2100-12-31'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Date
SET     $value = '1970-01-01'::DATE
DECLARE $nullableValue  -- Date
SET     $nullableValue = '2100-12-31'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Date
SET     $value = '1970-01-01'::DATE
DECLARE $nullableValue  -- Date
SET     $nullableValue = '2100-12-31'::DATE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

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
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

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
	CAST($Column AS DATE),
	CAST($ColumnNullable AS DATE)
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
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '1970-01-01'::DATE AND r.ColumnNullable = '2100-12-31'::DATE

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(26) -- String
SET     $Column = '1970-01-01 00:00:00.000000'
DECLARE $ColumnNullable NVarChar(26) -- String
SET     $ColumnNullable = '2100-12-31 00:00:00.000000'

INSERT INTO "TypeTable`2"
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
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(26) -- String
SET     $p2 = '1970-01-01 00:00:00.000000'
DECLARE $p3 NVarChar(26) -- String
SET     $p3 = '2100-12-31 00:00:00.000000'

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
SET     $nullableValue = '2100-12-31 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = '1970-01-01 00:00:00.000000'
DECLARE $nullableValue NVarChar(26) -- String
SET     $nullableValue = '2100-12-31 00:00:00.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DATE) AND r.ColumnNullable = CAST($nullableValue AS DATE)

