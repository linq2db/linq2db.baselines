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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '0'::FLOAT AND r.ColumnNullable IS NULL

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
	CAST($Column AS FLOAT),
	CAST($ColumnNullable AS FLOAT)
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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable IS NULL

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '-3.40282347E+38'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '-3.40282347E+38'::FLOAT AND r.ColumnNullable = '3.40282347E+38'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(15) -- String
SET     $Column = '-3.40282347E+38'
DECLARE $ColumnNullable NVarChar(14) -- String
SET     $ColumnNullable = '3.40282347E+38'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS FLOAT),
	CAST($ColumnNullable AS FLOAT)
)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '-3.40282347E+38'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(15) -- String
SET     $p2 = '-3.40282347E+38'
DECLARE $p3 NVarChar(14) -- String
SET     $p3 = '3.40282347E+38'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '-3.40282347E+38'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '-3.40282347E+38'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(15) -- String
SET     $value = '-3.40282347E+38'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '3.40282347E+38'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '-3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '3.40282347E+38'::FLOAT AND r.ColumnNullable = '-3.40282347E+38'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(14) -- String
SET     $Column = '3.40282347E+38'
DECLARE $ColumnNullable NVarChar(15) -- String
SET     $ColumnNullable = '-3.40282347E+38'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS FLOAT),
	CAST($ColumnNullable AS FLOAT)
)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '3.40282347E+38'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '-3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(14) -- String
SET     $p2 = '3.40282347E+38'
DECLARE $p3 NVarChar(15) -- String
SET     $p3 = '-3.40282347E+38'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '3.40282347E+38'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '-3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '3.40282347E+38'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '-3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '3.40282347E+38'
DECLARE $nullableValue NVarChar(15) -- String
SET     $nullableValue = '-3.40282347E+38'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '1.40129846E-45'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(14) -- String
SET     $Column = '1.40129846E-45'
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
	CAST($Column AS FLOAT),
	CAST($ColumnNullable AS FLOAT)
)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(14) -- String
SET     $p2 = '1.40129846E-45'
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
DECLARE $value NVarChar(14) -- String
SET     $value = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(14) -- String
SET     $value = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS FLOAT)

-- DuckDB
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = '1.40129846E-45'::FLOAT

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(3) -- String
SET     $Column = 'NaN'
DECLARE $ColumnNullable NVarChar(14) -- String
SET     $ColumnNullable = '1.40129846E-45'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS FLOAT),
	CAST($ColumnNullable AS FLOAT)
)

-- DuckDB
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(3) -- String
SET     $p2 = 'NaN'
DECLARE $p3 NVarChar(14) -- String
SET     $p3 = '1.40129846E-45'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = '1.40129846E-45'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 'Infinity'::FLOAT AND r.ColumnNullable = '-Infinity'::FLOAT

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
	CAST($Column AS FLOAT),
	CAST($ColumnNullable AS FLOAT)
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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = '-Infinity'::FLOAT AND r.ColumnNullable = 'Infinity'::FLOAT

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
	CAST($Column AS FLOAT),
	CAST($ColumnNullable AS FLOAT)
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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

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
	r."Column" = CAST($value AS FLOAT) AND r.ColumnNullable = CAST($nullableValue AS FLOAT)

