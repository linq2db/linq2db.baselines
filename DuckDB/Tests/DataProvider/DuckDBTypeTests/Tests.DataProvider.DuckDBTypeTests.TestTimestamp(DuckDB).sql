-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-02 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-30 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-30 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55.123123'::TIMESTAMP AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.123123'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.123123'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-02 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-30 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-30 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55.123123'::TIMESTAMP AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.123123'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.123123'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
	r."Column" = '0001-01-02 00:00:00.000000'::TIMESTAMP AND
	r.ColumnNullable = '9999-12-30 23:59:59.999999'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-30 23:59:59.999999'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999999'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55.123123'::TIMESTAMP AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.123123'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.123123'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00'::TIMESTAMP_S AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00'::TIMESTAMP_S AND
	r.ColumnNullable = '9999-12-31 23:59:59'::TIMESTAMP_S

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00'::TIMESTAMP_S AND
	r.ColumnNullable = '9999-12-31 23:59:59'::TIMESTAMP_S

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.000000'::TIMESTAMP

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
	r."Column" = '0001-01-02 00:00:00'::TIMESTAMP_S AND
	r.ColumnNullable = '9999-12-30 23:59:59'::TIMESTAMP_S

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-30 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-30 23:59:59.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55'::TIMESTAMP_S AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable = '9999-12-31 23:59:59.999'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable = '9999-12-31 23:59:59.999'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
	r."Column" = '0001-01-02 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable = '9999-12-30 23:59:59.999'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-30 23:59:59.999000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55.123'::TIMESTAMP_MS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.123000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.123000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable = '9999-12-31 23:59:59.999'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
	r."Column" = '0001-01-01 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable = '9999-12-31 23:59:59.999'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-31 23:59:59.999000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-01 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-31 23:59:59.999000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
	r."Column" = '0001-01-02 00:00:00.000'::TIMESTAMP_MS AND
	r.ColumnNullable = '9999-12-30 23:59:59.999'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '9999-12-30 23:59:59.999000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '0001-01-02 00:00:00.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '9999-12-30 23:59:59.999000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55.123'::TIMESTAMP_MS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.123000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.123000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00.0000000'::TIMESTAMP_NS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.1452251'::TIMESTAMP_NS AND
	r.ColumnNullable = '2262-04-11 23:47:16.8547758'::TIMESTAMP_NS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '2262-04-11 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.1452251'::TIMESTAMP_NS AND
	r.ColumnNullable = '2262-04-11 23:47:16.8547758'::TIMESTAMP_NS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '2262-04-11 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-22 00:12:43.1452251'::TIMESTAMP_NS AND
	r.ColumnNullable = '2262-04-10 23:47:16.8547758'::TIMESTAMP_NS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '2262-04-10 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55.1231234'::TIMESTAMP_NS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.123123'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.123123'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123123'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
	r."Column" = '2020-02-29 00:00:00.0000000'::TIMESTAMP_NS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '2020-02-29 00:00:00.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '2020-02-29 00:00:00.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '2020-02-29 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.1452251'::TIMESTAMP_NS AND
	r.ColumnNullable = '2262-04-11 23:47:16.8547758'::TIMESTAMP_NS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '2262-04-11 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.1452251'::TIMESTAMP_NS AND
	r.ColumnNullable = '2262-04-11 23:47:16.8547758'::TIMESTAMP_NS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '2262-04-11 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-21 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-22 00:12:43.1452251'::TIMESTAMP_NS AND
	r.ColumnNullable = '2262-04-10 23:47:16.8547758'::TIMESTAMP_NS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime2
SET     $Column = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime2
SET     $ColumnNullable = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime2
SET     $p2 = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $p3  -- DateTime2
SET     $p3 = '2262-04-10 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime2
SET     $value = '1677-09-22 00:12:43.145225'::TIMESTAMP
DECLARE $nullableValue  -- DateTime2
SET     $nullableValue = '2262-04-10 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
	r."Column" = '2020-02-29 17:54:55.1230000'::TIMESTAMP_NS AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '2020-02-29 17:54:55.123000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '2020-02-29 17:54:55.123000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '2020-02-29 17:54:55.123000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP AND r.ColumnNullable = 'infinity'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.145224'::TIMESTAMP AND
	r.ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP_S AND r.ColumnNullable = 'infinity'::TIMESTAMP_S

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.000000'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.000000'::TIMESTAMP_S AND
	r.ColumnNullable = '2262-04-11 23:47:16.000000'::TIMESTAMP_S

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.000000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.000000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.000000'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.000000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.000000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.000000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.000000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP_MS AND r.ColumnNullable = 'infinity'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.100000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.800000'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.100000'::TIMESTAMP_MS AND
	r.ColumnNullable = '2262-04-11 23:47:16.800000'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.100000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.800000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.100000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.800000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.100000'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.800000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.100000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.800000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.100000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.800000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.100000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.800000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP_MS AND r.ColumnNullable = 'infinity'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.140000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.850000'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.140000'::TIMESTAMP_MS AND
	r.ColumnNullable = '2262-04-11 23:47:16.850000'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.140000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.850000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.140000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.850000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.140000'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.850000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.140000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.850000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.140000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.850000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.140000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.850000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP_MS AND r.ColumnNullable = 'infinity'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854000'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.145000'::TIMESTAMP_MS AND
	r.ColumnNullable = '2262-04-11 23:47:16.854000'::TIMESTAMP_MS

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.145000'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.854000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854000'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.145000'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.854000'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854000'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145000'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854000'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP AND r.ColumnNullable = 'infinity'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145200'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854700'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.145200'::TIMESTAMP AND
	r.ColumnNullable = '2262-04-11 23:47:16.854700'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.145200'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.854700'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145200'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854700'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.145200'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.854700'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145200'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854700'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145200'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854700'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145200'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854700'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP AND r.ColumnNullable = 'infinity'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145220'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854770'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.145220'::TIMESTAMP AND
	r.ColumnNullable = '2262-04-11 23:47:16.854770'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.145220'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.854770'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145220'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854770'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.145220'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.854770'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145220'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854770'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145220'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854770'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145220'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854770'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
	r."Column" = '-infinity'::TIMESTAMP AND r.ColumnNullable = 'infinity'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '-infinity'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = 'infinity'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '-infinity'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = 'infinity'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '-infinity'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = 'infinity'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
	r."Column" = '1677-09-21 00:12:43.145224'::TIMESTAMP AND
	r.ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- DateTime
SET     $Column = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $ColumnNullable  -- DateTime
SET     $ColumnNullable = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $p2  -- DateTime
SET     $p2 = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $p3  -- DateTime
SET     $p3 = '2262-04-11 23:47:16.854775'::TIMESTAMP

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

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
DECLARE $value  -- DateTime
SET     $value = '1677-09-21 00:12:43.145224'::TIMESTAMP
DECLARE $nullableValue  -- DateTime
SET     $nullableValue = '2262-04-11 23:47:16.854775'::TIMESTAMP

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

