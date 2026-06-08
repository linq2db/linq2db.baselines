-- DuckDB
DECLARE $value NVarChar -- String
SET     $value = ''

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
	r."Column" = '' AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar -- String
SET     $Column = ''
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
DECLARE $value NVarChar -- String
SET     $value = ''

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
DECLARE $p2 NVarChar -- String
SET     $p2 = ''

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value NVarChar -- String
SET     $value = ''

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
DECLARE $value NVarChar -- String
SET     $value = ''

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
DECLARE $value NVarChar -- String
SET     $value = ''

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(13) -- String
SET     $value = 'test string  '
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = 'другая строка  '

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
	r."Column" = 'test string  ' AND r.ColumnNullable = 'другая строка  '

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(13) -- String
SET     $Column = 'test string  '
DECLARE $ColumnNullable NVarChar(15) -- String
SET     $ColumnNullable = 'другая строка  '

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
DECLARE $value NVarChar(13) -- String
SET     $value = 'test string  '
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = 'другая строка  '

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
DECLARE $p2 NVarChar(13) -- String
SET     $p2 = 'test string  '
DECLARE $p3 NVarChar(15) -- String
SET     $p3 = 'другая строка  '

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(13) -- String
SET     $value = 'test string  '
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = 'другая строка  '

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
DECLARE $value NVarChar(13) -- String
SET     $value = 'test string  '
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = 'другая строка  '

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
DECLARE $value NVarChar(13) -- String
SET     $value = 'test string  '
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = 'другая строка  '

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(17) -- String
SET     $nullableValue = 'special	chars
'

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
	r."Column" = 'with ''quotes'' and "double"' AND r.ColumnNullable = 'special	chars
'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(26) -- String
SET     $Column = 'with ''quotes'' and "double"'
DECLARE $ColumnNullable NVarChar(17) -- String
SET     $ColumnNullable = 'special	chars
'

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
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(17) -- String
SET     $nullableValue = 'special	chars
'

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
DECLARE $p2 NVarChar(26) -- String
SET     $p2 = 'with ''quotes'' and "double"'
DECLARE $p3 NVarChar(17) -- String
SET     $p3 = 'special	chars
'

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
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(17) -- String
SET     $nullableValue = 'special	chars
'

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
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(17) -- String
SET     $nullableValue = 'special	chars
'

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
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(17) -- String
SET     $nullableValue = 'special	chars
'

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
	r."Column" = '1' || chr(0) || '2' AND r.ColumnNullable = '3' || chr(1) || '4'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	1,
	'1' || chr(0) || '2',
	'3' || chr(1) || '4'
)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '1' || chr(0) || '2' AND r.ColumnNullable = '3' || chr(1) || '4'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,'1' || chr(0) || '2','3' || chr(1) || '4')

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '1' || chr(0) || '2' AND r.ColumnNullable = '3' || chr(1) || '4'

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '1234567890x'
DECLARE $nullableValue NVarChar(10) -- String
SET     $nullableValue = '0123456789q'

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
	r."Column" = '1234567890x' AND r.ColumnNullable = '0123456789q'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(10) -- String
SET     $Column = '1234567890x'
DECLARE $ColumnNullable NVarChar(10) -- String
SET     $ColumnNullable = '0123456789q'

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
DECLARE $value NVarChar(10) -- String
SET     $value = '1234567890x'
DECLARE $nullableValue NVarChar(10) -- String
SET     $nullableValue = '0123456789q'

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
DECLARE $p2 NVarChar(10) -- String
SET     $p2 = '1234567890x'
DECLARE $p3 NVarChar(10) -- String
SET     $p3 = '0123456789q'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(10) -- String
SET     $value = '1234567890x'
DECLARE $nullableValue NVarChar(10) -- String
SET     $nullableValue = '0123456789q'

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
DECLARE $value NVarChar(10) -- String
SET     $value = '1234567890x'
DECLARE $nullableValue NVarChar(10) -- String
SET     $nullableValue = '0123456789q'

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
DECLARE $value NVarChar(10) -- String
SET     $value = '1234567890x'
DECLARE $nullableValue NVarChar(10) -- String
SET     $nullableValue = '0123456789q'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'

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
	r."Column" = 'A' AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NChar(1) -- StringFixedLength
SET     $Column = 'A'
DECLARE $ColumnNullable NChar(1) -- StringFixedLength
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
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'

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
DECLARE $p2 NChar(1) -- StringFixedLength
SET     $p2 = 'A'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'

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
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'

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
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'
DECLARE $nullableValue NChar(1) -- StringFixedLength
SET     $nullableValue = 'я'

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
	r."Column" = 'A' AND r.ColumnNullable = 'я'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NChar(1) -- StringFixedLength
SET     $Column = 'A'
DECLARE $ColumnNullable NChar(1) -- StringFixedLength
SET     $ColumnNullable = 'я'

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
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'
DECLARE $nullableValue NChar(1) -- StringFixedLength
SET     $nullableValue = 'я'

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
DECLARE $p2 NChar(1) -- StringFixedLength
SET     $p2 = 'A'
DECLARE $p3 NChar(1) -- StringFixedLength
SET     $p3 = 'я'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'
DECLARE $nullableValue NChar(1) -- StringFixedLength
SET     $nullableValue = 'я'

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
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'
DECLARE $nullableValue NChar(1) -- StringFixedLength
SET     $nullableValue = 'я'

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
DECLARE $value NChar(1) -- StringFixedLength
SET     $value = 'A'
DECLARE $nullableValue NChar(1) -- StringFixedLength
SET     $nullableValue = 'я'

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
	r."Column" = chr(0) AND r.ColumnNullable = ''

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	1,
	chr(0),
	''
)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = chr(0) AND r.ColumnNullable = ''

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,chr(0),'')

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = chr(0) AND r.ColumnNullable = ''

