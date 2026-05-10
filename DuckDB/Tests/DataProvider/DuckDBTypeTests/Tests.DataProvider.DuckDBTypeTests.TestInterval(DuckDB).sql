-- DuckDB
DECLARE $value  -- Object
SET     $value = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '02:03:04.123456'::INTERVAL AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Object
SET     $Column = '02:03:04.123456'::INTERVAL
DECLARE $ColumnNullable NVarChar -- String
SET     $ColumnNullable = NULL

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- DuckDB
DECLARE $value  -- Object
SET     $value = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Object
SET     $p2 = '02:03:04.123456'::INTERVAL

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- Object
SET     $value = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Object
SET     $value = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Object
SET     $value = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Object
SET     $value = INTERVAL '30 days 12:30:45.123456'
DECLARE $nullableValue  -- Object
SET     $nullableValue = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = INTERVAL '30 days 12:30:45.123456' AND
	r.ColumnNullable = '02:03:04.123456'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Object
SET     $Column = INTERVAL '30 days 12:30:45.123456'
DECLARE $ColumnNullable  -- Object
SET     $ColumnNullable = '02:03:04.123456'::INTERVAL

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- DuckDB
DECLARE $value  -- Object
SET     $value = INTERVAL '30 days 12:30:45.123456'
DECLARE $nullableValue  -- Object
SET     $nullableValue = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Object
SET     $p2 = INTERVAL '30 days 12:30:45.123456'
DECLARE $p3  -- Object
SET     $p3 = '02:03:04.123456'::INTERVAL

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Object
SET     $value = INTERVAL '30 days 12:30:45.123456'
DECLARE $nullableValue  -- Object
SET     $nullableValue = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Object
SET     $value = INTERVAL '30 days 12:30:45.123456'
DECLARE $nullableValue  -- Object
SET     $nullableValue = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- Object
SET     $value = INTERVAL '30 days 12:30:45.123456'
DECLARE $nullableValue  -- Object
SET     $nullableValue = '02:03:04.123456'::INTERVAL

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2 days 23456789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '30 days 12345678901 microseconds'::INTERVAL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2 days 23456789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '30 days 12345678901 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	$Id,
	'2 days 23456789012 microseconds'::INTERVAL,
	'30 days 12345678901 microseconds'::INTERVAL
)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2 days 23456789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '30 days 12345678901 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,'2 days 23456789012 microseconds'::INTERVAL,'30 days 12345678901 microseconds'::INTERVAL)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2 days 23456789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '30 days 12345678901 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2 days 23456789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '30 days 12345678901 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '2 days 23456789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '30 days 12345678901 microseconds'::INTERVAL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '56789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '56789012 microseconds'::INTERVAL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '56789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '56789012 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	$Id,
	'56789012 microseconds'::INTERVAL,
	'56789012 microseconds'::INTERVAL
)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '56789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '56789012 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,'56789012 microseconds'::INTERVAL,'56789012 microseconds'::INTERVAL)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '56789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '56789012 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '56789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '56789012 microseconds'::INTERVAL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'TypeTable`2'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '56789012 microseconds'::INTERVAL AND
	r.ColumnNullable = '56789012 microseconds'::INTERVAL

