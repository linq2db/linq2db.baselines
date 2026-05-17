-- DuckDB
DECLARE $value  -- Double
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
DECLARE $Column  -- Double
SET     $Column = 0
DECLARE $ColumnNullable  -- Double
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
DECLARE $value  -- Double
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
DECLARE $p2  -- Double
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
DECLARE $value  -- Double
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
DECLARE $value  -- Double
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
DECLARE $value  -- Double
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
DECLARE $value  -- Double
SET     $value = -1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = 1.7976931348623157E+308

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
	r."Column" = -1.7976931348623157E+308 AND r.ColumnNullable = 1.7976931348623157E+308

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Double
SET     $Column = -1.7976931348623157E+308
DECLARE $ColumnNullable  -- Double
SET     $ColumnNullable = 1.7976931348623157E+308

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
DECLARE $value  -- Double
SET     $value = -1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = 1.7976931348623157E+308

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
DECLARE $p2  -- Double
SET     $p2 = -1.7976931348623157E+308
DECLARE $p3  -- Double
SET     $p3 = 1.7976931348623157E+308

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Double
SET     $value = -1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = 1.7976931348623157E+308

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
DECLARE $value  -- Double
SET     $value = -1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = 1.7976931348623157E+308

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
DECLARE $value  -- Double
SET     $value = -1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = 1.7976931348623157E+308

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- Double
SET     $value = 1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = -1.7976931348623157E+308

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
	r."Column" = 1.7976931348623157E+308 AND r.ColumnNullable = -1.7976931348623157E+308

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Double
SET     $Column = 1.7976931348623157E+308
DECLARE $ColumnNullable  -- Double
SET     $ColumnNullable = -1.7976931348623157E+308

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
DECLARE $value  -- Double
SET     $value = 1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = -1.7976931348623157E+308

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
DECLARE $p2  -- Double
SET     $p2 = 1.7976931348623157E+308
DECLARE $p3  -- Double
SET     $p3 = -1.7976931348623157E+308

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Double
SET     $value = 1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = -1.7976931348623157E+308

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
DECLARE $value  -- Double
SET     $value = 1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = -1.7976931348623157E+308

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
DECLARE $value  -- Double
SET     $value = 1.7976931348623157E+308
DECLARE $nullableValue  -- Double
SET     $nullableValue = -1.7976931348623157E+308

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- Double
SET     $value = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 4.9406564584124654E-324

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Double
SET     $Column = 4.9406564584124654E-324
DECLARE $ColumnNullable  -- Double
SET     $ColumnNullable = 'NaN'::DOUBLE

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
DECLARE $value  -- Double
SET     $value = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Double
SET     $p2 = 4.9406564584124654E-324
DECLARE $p3  -- Double
SET     $p3 = 'NaN'::DOUBLE

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Double
SET     $value = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value

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
DECLARE $value  -- Double
SET     $value = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value

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
DECLARE $value  -- Double
SET     $value = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value

-- DuckDB
DECLARE $nullableValue  -- Double
SET     $nullableValue = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = $nullableValue

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = 4.9406564584124654E-324

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Double
SET     $Column = 'NaN'::DOUBLE
DECLARE $ColumnNullable  -- Double
SET     $ColumnNullable = 4.9406564584124654E-324

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
DECLARE $nullableValue  -- Double
SET     $nullableValue = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = $nullableValue

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- Double
SET     $p2 = 'NaN'::DOUBLE
DECLARE $p3  -- Double
SET     $p3 = 4.9406564584124654E-324

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $nullableValue  -- Double
SET     $nullableValue = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = $nullableValue

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
DECLARE $nullableValue  -- Double
SET     $nullableValue = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = $nullableValue

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
DECLARE $nullableValue  -- Double
SET     $nullableValue = 4.9406564584124654E-324

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- Double
SET     $value = 'Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = '-Infinity'::DOUBLE

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
	r."Column" = 'Infinity'::DOUBLE AND r.ColumnNullable = '-Infinity'::DOUBLE

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Double
SET     $Column = 'Infinity'::DOUBLE
DECLARE $ColumnNullable  -- Double
SET     $ColumnNullable = '-Infinity'::DOUBLE

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
DECLARE $value  -- Double
SET     $value = 'Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = '-Infinity'::DOUBLE

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
DECLARE $p2  -- Double
SET     $p2 = 'Infinity'::DOUBLE
DECLARE $p3  -- Double
SET     $p3 = '-Infinity'::DOUBLE

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Double
SET     $value = 'Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = '-Infinity'::DOUBLE

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
DECLARE $value  -- Double
SET     $value = 'Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = '-Infinity'::DOUBLE

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
DECLARE $value  -- Double
SET     $value = 'Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = '-Infinity'::DOUBLE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value  -- Double
SET     $value = '-Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = 'Infinity'::DOUBLE

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
	r."Column" = '-Infinity'::DOUBLE AND r.ColumnNullable = 'Infinity'::DOUBLE

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Double
SET     $Column = '-Infinity'::DOUBLE
DECLARE $ColumnNullable  -- Double
SET     $ColumnNullable = 'Infinity'::DOUBLE

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
DECLARE $value  -- Double
SET     $value = '-Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = 'Infinity'::DOUBLE

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
DECLARE $p2  -- Double
SET     $p2 = '-Infinity'::DOUBLE
DECLARE $p3  -- Double
SET     $p3 = 'Infinity'::DOUBLE

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Double
SET     $value = '-Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = 'Infinity'::DOUBLE

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
DECLARE $value  -- Double
SET     $value = '-Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = 'Infinity'::DOUBLE

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
DECLARE $value  -- Double
SET     $value = '-Infinity'::DOUBLE
DECLARE $nullableValue  -- Double
SET     $nullableValue = 'Infinity'::DOUBLE

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

