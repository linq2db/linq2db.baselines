-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable IS NULL

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
DECLARE $Column NVarChar(1) -- String
SET     $Column = '0'
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
	CAST($Column AS DOUBLE),
	CAST($ColumnNullable AS DOUBLE)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = '0'
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
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = '0'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(24) -- String
SET     $value = '-1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

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
DECLARE $Column NVarChar(24) -- String
SET     $Column = '-1.7976931348623157E+308'
DECLARE $ColumnNullable NVarChar(23) -- String
SET     $ColumnNullable = '1.7976931348623157E+308'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS DOUBLE),
	CAST($ColumnNullable AS DOUBLE)
)

-- DuckDB
DECLARE $value NVarChar(24) -- String
SET     $value = '-1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(24) -- String
SET     $p2 = '-1.7976931348623157E+308'
DECLARE $p3 NVarChar(23) -- String
SET     $p3 = '1.7976931348623157E+308'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(24) -- String
SET     $value = '-1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(24) -- String
SET     $value = '-1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(24) -- String
SET     $value = '-1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(24) -- String
SET     $nullableValue = '-1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

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
DECLARE $Column NVarChar(23) -- String
SET     $Column = '1.7976931348623157E+308'
DECLARE $ColumnNullable NVarChar(24) -- String
SET     $ColumnNullable = '-1.7976931348623157E+308'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS DOUBLE),
	CAST($ColumnNullable AS DOUBLE)
)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(24) -- String
SET     $nullableValue = '-1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(23) -- String
SET     $p2 = '1.7976931348623157E+308'
DECLARE $p3 NVarChar(24) -- String
SET     $p3 = '-1.7976931348623157E+308'

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
SET     $value = '1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(24) -- String
SET     $nullableValue = '-1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(24) -- String
SET     $nullableValue = '-1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '1.7976931348623157E+308'
DECLARE $nullableValue NVarChar(24) -- String
SET     $nullableValue = '-1.7976931348623157E+308'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE)

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
DECLARE $Column NVarChar(23) -- String
SET     $Column = '4.9406564584124654E-324'
DECLARE $ColumnNullable NVarChar(3) -- String
SET     $ColumnNullable = 'NaN'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS DOUBLE),
	CAST($ColumnNullable AS DOUBLE)
)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(23) -- String
SET     $p2 = '4.9406564584124654E-324'
DECLARE $p3 NVarChar(3) -- String
SET     $p3 = 'NaN'

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
SET     $value = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(23) -- String
SET     $value = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE)

-- DuckDB
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS DOUBLE)

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
DECLARE $Column NVarChar(3) -- String
SET     $Column = 'NaN'
DECLARE $ColumnNullable NVarChar(23) -- String
SET     $ColumnNullable = '4.9406564584124654E-324'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS DOUBLE),
	CAST($ColumnNullable AS DOUBLE)
)

-- DuckDB
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(3) -- String
SET     $p2 = 'NaN'
DECLARE $p3 NVarChar(23) -- String
SET     $p3 = '4.9406564584124654E-324'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $nullableValue NVarChar(23) -- String
SET     $nullableValue = '4.9406564584124654E-324'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB
DECLARE $value NVarChar(8) -- String
SET     $value = 'Infinity'
DECLARE $nullableValue NVarChar(9) -- String
SET     $nullableValue = '-Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

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
DECLARE $Column NVarChar(8) -- String
SET     $Column = 'Infinity'
DECLARE $ColumnNullable NVarChar(9) -- String
SET     $ColumnNullable = '-Infinity'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS DOUBLE),
	CAST($ColumnNullable AS DOUBLE)
)

-- DuckDB
DECLARE $value NVarChar(8) -- String
SET     $value = 'Infinity'
DECLARE $nullableValue NVarChar(9) -- String
SET     $nullableValue = '-Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(8) -- String
SET     $p2 = 'Infinity'
DECLARE $p3 NVarChar(9) -- String
SET     $p3 = '-Infinity'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(8) -- String
SET     $value = 'Infinity'
DECLARE $nullableValue NVarChar(9) -- String
SET     $nullableValue = '-Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(8) -- String
SET     $value = 'Infinity'
DECLARE $nullableValue NVarChar(9) -- String
SET     $nullableValue = '-Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(8) -- String
SET     $value = 'Infinity'
DECLARE $nullableValue NVarChar(9) -- String
SET     $nullableValue = '-Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB
DECLARE $value NVarChar(9) -- String
SET     $value = '-Infinity'
DECLARE $nullableValue NVarChar(8) -- String
SET     $nullableValue = 'Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

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
DECLARE $Column NVarChar(9) -- String
SET     $Column = '-Infinity'
DECLARE $ColumnNullable NVarChar(8) -- String
SET     $ColumnNullable = 'Infinity'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS DOUBLE),
	CAST($ColumnNullable AS DOUBLE)
)

-- DuckDB
DECLARE $value NVarChar(9) -- String
SET     $value = '-Infinity'
DECLARE $nullableValue NVarChar(8) -- String
SET     $nullableValue = 'Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(9) -- String
SET     $p2 = '-Infinity'
DECLARE $p3 NVarChar(8) -- String
SET     $p3 = 'Infinity'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(9) -- String
SET     $value = '-Infinity'
DECLARE $nullableValue NVarChar(8) -- String
SET     $nullableValue = 'Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(9) -- String
SET     $value = '-Infinity'
DECLARE $nullableValue NVarChar(8) -- String
SET     $nullableValue = 'Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(9) -- String
SET     $value = '-Infinity'
DECLARE $nullableValue NVarChar(8) -- String
SET     $nullableValue = 'Infinity'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS DOUBLE) AND r.ColumnNullable = CAST($nullableValue AS DOUBLE)

