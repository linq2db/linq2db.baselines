-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable IS NULL

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
DECLARE $Column  -- VarNumeric
SET     $Column = 0
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
	CAST($Column AS HUGEINT),
	CAST($ColumnNullable AS HUGEINT)
)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- VarNumeric
SET     $p2 = 0
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
DECLARE $value  -- VarNumeric
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 0

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = -170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = 170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = -170141183460469231731687303715884105727 AND
	r.ColumnNullable = 170141183460469231731687303715884105727

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- VarNumeric
SET     $Column = -170141183460469231731687303715884105727
DECLARE $ColumnNullable  -- VarNumeric
SET     $ColumnNullable = 170141183460469231731687303715884105727

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS HUGEINT),
	CAST($ColumnNullable AS HUGEINT)
)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = -170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = 170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- VarNumeric
SET     $p2 = -170141183460469231731687303715884105727
DECLARE $p3  -- VarNumeric
SET     $p3 = 170141183460469231731687303715884105727

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = -170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = 170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = -170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = 170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = -170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = 170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = -170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 170141183460469231731687303715884105727 AND
	r.ColumnNullable = -170141183460469231731687303715884105727

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- VarNumeric
SET     $Column = 170141183460469231731687303715884105727
DECLARE $ColumnNullable  -- VarNumeric
SET     $ColumnNullable = -170141183460469231731687303715884105727

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS HUGEINT),
	CAST($ColumnNullable AS HUGEINT)
)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = -170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2  -- VarNumeric
SET     $p2 = 170141183460469231731687303715884105727
DECLARE $p3  -- VarNumeric
SET     $p3 = -170141183460469231731687303715884105727

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = -170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = -170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value  -- VarNumeric
SET     $value = 170141183460469231731687303715884105727
DECLARE $nullableValue  -- VarNumeric
SET     $nullableValue = -170141183460469231731687303715884105727

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS HUGEINT) AND r.ColumnNullable = CAST($nullableValue AS HUGEINT)

