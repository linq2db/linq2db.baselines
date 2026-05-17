-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
	r."Column" = '00:00:00+00:00'::TIMETZ AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTimeOffset
SET     $Column = '0001-01-01 00:00:00+00'::TIMESTAMPTZ
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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
DECLARE $p2  -- DateTimeOffset
SET     $p2 = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 01:02:03+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 23:59:59.999999+00'::TIMESTAMPTZ

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
	r."Column" = '01:02:03+00:00'::TIMETZ AND r.ColumnNullable = '23:59:59.999999+00:00'::TIMETZ

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTimeOffset
SET     $Column = '0001-01-01 01:02:03+00'::TIMESTAMPTZ
DECLARE $ColumnNullable  -- DateTimeOffset
SET     $ColumnNullable = '0001-01-01 23:59:59.999999+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 01:02:03+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 23:59:59.999999+00'::TIMESTAMPTZ

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
DECLARE $p2  -- DateTimeOffset
SET     $p2 = '0001-01-01 01:02:03+00'::TIMESTAMPTZ
DECLARE $p3  -- DateTimeOffset
SET     $p3 = '0001-01-01 23:59:59.999999+00'::TIMESTAMPTZ

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 01:02:03+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 23:59:59.999999+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 01:02:03+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 23:59:59.999999+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 01:02:03+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 23:59:59.999999+00'::TIMESTAMPTZ

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
	r."Column" = '00:00:00.000000+00:00'::TIMETZ AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTimeOffset
SET     $Column = '0001-01-01 00:00:00+00'::TIMESTAMPTZ
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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
DECLARE $p2  -- DateTimeOffset
SET     $p2 = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:00:00+00'::TIMESTAMPTZ

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:17:03.456789+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 05:47:03.456789+00'::TIMESTAMPTZ

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
	r."Column" = '01:02:03.456789+00:45'::TIMETZ AND r.ColumnNullable = '05:02:03.456789-00:45'::TIMETZ

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTimeOffset
SET     $Column = '0001-01-01 00:17:03.456789+00'::TIMESTAMPTZ
DECLARE $ColumnNullable  -- DateTimeOffset
SET     $ColumnNullable = '0001-01-01 05:47:03.456789+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:17:03.456789+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 05:47:03.456789+00'::TIMESTAMPTZ

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
DECLARE $p2  -- DateTimeOffset
SET     $p2 = '0001-01-01 00:17:03.456789+00'::TIMESTAMPTZ
DECLARE $p3  -- DateTimeOffset
SET     $p3 = '0001-01-01 05:47:03.456789+00'::TIMESTAMPTZ

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:17:03.456789+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 05:47:03.456789+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:17:03.456789+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 05:47:03.456789+00'::TIMESTAMPTZ

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
DECLARE $value  -- DateTimeOffset
SET     $value = '0001-01-01 00:17:03.456789+00'::TIMESTAMPTZ
DECLARE $nullableValue  -- DateTimeOffset
SET     $nullableValue = '0001-01-01 05:47:03.456789+00'::TIMESTAMPTZ

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

