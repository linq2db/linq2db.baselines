-- DuckDB
DECLARE $value  -- SByte
SET     $value = 0

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
	r."Column" = 0 AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- SByte
SET     $Column = 0
DECLARE $ColumnNullable  -- SByte
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
DECLARE $value  -- SByte
SET     $value = 0

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
DECLARE $p2  -- SByte
SET     $p2 = 0

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- SByte
SET     $value = 0

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
DECLARE $value  -- SByte
SET     $value = 0

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
DECLARE $value  -- SByte
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- SByte
SET     $value = -128
DECLARE $nullableValue  -- SByte
SET     $nullableValue = 127

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
	r."Column" = -128 AND r.ColumnNullable = 127

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- SByte
SET     $Column = -128
DECLARE $ColumnNullable  -- SByte
SET     $ColumnNullable = 127

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
DECLARE $value  -- SByte
SET     $value = -128
DECLARE $nullableValue  -- SByte
SET     $nullableValue = 127

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
DECLARE $p2  -- SByte
SET     $p2 = -128
DECLARE $p3  -- SByte
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
DECLARE $value  -- SByte
SET     $value = -128
DECLARE $nullableValue  -- SByte
SET     $nullableValue = 127

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
DECLARE $value  -- SByte
SET     $value = -128
DECLARE $nullableValue  -- SByte
SET     $nullableValue = 127

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
DECLARE $value  -- SByte
SET     $value = -128
DECLARE $nullableValue  -- SByte
SET     $nullableValue = 127

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- SByte
SET     $value = 127
DECLARE $nullableValue  -- SByte
SET     $nullableValue = -128

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
	r."Column" = 127 AND r.ColumnNullable = -128

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- SByte
SET     $Column = 127
DECLARE $ColumnNullable  -- SByte
SET     $ColumnNullable = -128

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
DECLARE $value  -- SByte
SET     $value = 127
DECLARE $nullableValue  -- SByte
SET     $nullableValue = -128

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
DECLARE $p2  -- SByte
SET     $p2 = 127
DECLARE $p3  -- SByte
SET     $p3 = -128

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- SByte
SET     $value = 127
DECLARE $nullableValue  -- SByte
SET     $nullableValue = -128

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
DECLARE $value  -- SByte
SET     $value = 127
DECLARE $nullableValue  -- SByte
SET     $nullableValue = -128

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
DECLARE $value  -- SByte
SET     $value = 127
DECLARE $nullableValue  -- SByte
SET     $nullableValue = -128

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

