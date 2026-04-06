-- DuckDB
DECLARE $value NVarChar(22) -- String
SET     $value = '1 days 02:03:04.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS INTERVAL) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = INTERVAL '1 days 02:03:04' AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(22) -- String
SET     $Column = '1 days 02:03:04.000000'
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
	CAST($Column AS INTERVAL),
	CAST($ColumnNullable AS INTERVAL)
)

-- DuckDB
DECLARE $value NVarChar(22) -- String
SET     $value = '1 days 02:03:04.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS INTERVAL) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(22) -- String
SET     $p2 = '1 days 02:03:04.000000'
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
DECLARE $value NVarChar(22) -- String
SET     $value = '1 days 02:03:04.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS INTERVAL) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '30 days 12:30:45.000000'
DECLARE $nullableValue NVarChar(22) -- String
SET     $nullableValue = '1 days 02:03:04.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS INTERVAL) AND r.ColumnNullable = CAST($nullableValue AS INTERVAL)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = INTERVAL '30 days 12:30:45' AND r.ColumnNullable = INTERVAL '1 days 02:03:04'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(23) -- String
SET     $Column = '30 days 12:30:45.000000'
DECLARE $ColumnNullable NVarChar(22) -- String
SET     $ColumnNullable = '1 days 02:03:04.000000'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS INTERVAL),
	CAST($ColumnNullable AS INTERVAL)
)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '30 days 12:30:45.000000'
DECLARE $nullableValue NVarChar(22) -- String
SET     $nullableValue = '1 days 02:03:04.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS INTERVAL) AND r.ColumnNullable = CAST($nullableValue AS INTERVAL)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(23) -- String
SET     $p2 = '30 days 12:30:45.000000'
DECLARE $p3 NVarChar(22) -- String
SET     $p3 = '1 days 02:03:04.000000'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '30 days 12:30:45.000000'
DECLARE $nullableValue NVarChar(22) -- String
SET     $nullableValue = '1 days 02:03:04.000000'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS INTERVAL) AND r.ColumnNullable = CAST($nullableValue AS INTERVAL)

