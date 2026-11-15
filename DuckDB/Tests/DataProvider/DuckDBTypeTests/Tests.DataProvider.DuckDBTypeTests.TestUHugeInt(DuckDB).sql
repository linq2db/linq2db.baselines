-- DuckDB
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM

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
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Column BIGNUM -- VarNumeric
SET     $Column = '0'::BIGNUM
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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM

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
DECLARE $p1 INTEGER -- Int32
SET     $p1 = 1
DECLARE $p2 BIGNUM -- VarNumeric
SET     $p2 = '0'::BIGNUM

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '340282366920938463463374607431768211455'::BIGNUM

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
	r."Column" = 0 AND r.ColumnNullable = 340282366920938463463374607431768211455

-- DuckDB
DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Column BIGNUM -- VarNumeric
SET     $Column = '0'::BIGNUM
DECLARE $ColumnNullable BIGNUM -- VarNumeric
SET     $ColumnNullable = '340282366920938463463374607431768211455'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '340282366920938463463374607431768211455'::BIGNUM

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
DECLARE $p1 INTEGER -- Int32
SET     $p1 = 1
DECLARE $p2 BIGNUM -- VarNumeric
SET     $p2 = '0'::BIGNUM
DECLARE $p3 BIGNUM -- VarNumeric
SET     $p3 = '340282366920938463463374607431768211455'::BIGNUM

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '340282366920938463463374607431768211455'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '340282366920938463463374607431768211455'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '0'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '340282366920938463463374607431768211455'::BIGNUM

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

-- DuckDB
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '340282366920938463463374607431768211455'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '0'::BIGNUM

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
	r."Column" = 340282366920938463463374607431768211455 AND
	r.ColumnNullable = 0

-- DuckDB
DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Column BIGNUM -- VarNumeric
SET     $Column = '340282366920938463463374607431768211455'::BIGNUM
DECLARE $ColumnNullable BIGNUM -- VarNumeric
SET     $ColumnNullable = '0'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '340282366920938463463374607431768211455'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '0'::BIGNUM

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
DECLARE $p1 INTEGER -- Int32
SET     $p1 = 1
DECLARE $p2 BIGNUM -- VarNumeric
SET     $p2 = '340282366920938463463374607431768211455'::BIGNUM
DECLARE $p3 BIGNUM -- VarNumeric
SET     $p3 = '0'::BIGNUM

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '340282366920938463463374607431768211455'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '0'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '340282366920938463463374607431768211455'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '0'::BIGNUM

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
DECLARE $value BIGNUM -- VarNumeric
SET     $value = '340282366920938463463374607431768211455'::BIGNUM
DECLARE $nullableValue BIGNUM -- VarNumeric
SET     $nullableValue = '0'::BIGNUM

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

