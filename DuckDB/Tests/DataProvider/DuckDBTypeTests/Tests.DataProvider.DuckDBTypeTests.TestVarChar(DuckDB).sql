-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 'test string' AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(11) -- String
SET     $Column = 'test string'
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
	CAST($Column AS VARCHAR),
	CAST($ColumnNullable AS VARCHAR)
)

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(11) -- String
SET     $p2 = 'test string'
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
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'
DECLARE $nullableValue NVarChar(13) -- String
SET     $nullableValue = 'другая строка'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 'test string' AND r.ColumnNullable = 'другая строка'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(11) -- String
SET     $Column = 'test string'
DECLARE $ColumnNullable NVarChar(13) -- String
SET     $ColumnNullable = 'другая строка'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS VARCHAR),
	CAST($ColumnNullable AS VARCHAR)
)

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'
DECLARE $nullableValue NVarChar(13) -- String
SET     $nullableValue = 'другая строка'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(11) -- String
SET     $p2 = 'test string'
DECLARE $p3 NVarChar(13) -- String
SET     $p3 = 'другая строка'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'
DECLARE $nullableValue NVarChar(13) -- String
SET     $nullableValue = 'другая строка'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'
DECLARE $nullableValue NVarChar(13) -- String
SET     $nullableValue = 'другая строка'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(11) -- String
SET     $value = 'test string'
DECLARE $nullableValue NVarChar(13) -- String
SET     $nullableValue = 'другая строка'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = 'special	chars
'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = 'with ''quotes'' and "double"' AND r.ColumnNullable = 'special	chars
'

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(26) -- String
SET     $Column = 'with ''quotes'' and "double"'
DECLARE $ColumnNullable NVarChar(14) -- String
SET     $ColumnNullable = 'special	chars
'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS VARCHAR),
	CAST($ColumnNullable AS VARCHAR)
)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = 'special	chars
'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(26) -- String
SET     $p2 = 'with ''quotes'' and "double"'
DECLARE $p3 NVarChar(14) -- String
SET     $p3 = 'special	chars
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
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = 'special	chars
'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = 'special	chars
'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(26) -- String
SET     $value = 'with ''quotes'' and "double"'
DECLARE $nullableValue NVarChar(14) -- String
SET     $nullableValue = 'special	chars
'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

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
DECLARE $Column NVarChar(1) -- String
SET     $Column = 'A'
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
	CAST($Column AS VARCHAR),
	CAST($ColumnNullable AS VARCHAR)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = 'A'
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
SET     $value = 'A'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = 'я'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

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
DECLARE $Column NVarChar(1) -- String
SET     $Column = 'A'
DECLARE $ColumnNullable NVarChar(1) -- String
SET     $ColumnNullable = 'я'

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS VARCHAR),
	CAST($ColumnNullable AS VARCHAR)
)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = 'я'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $p1  -- Int32
SET     $p1 = 1
DECLARE $p2 NVarChar(1) -- String
SET     $p2 = 'A'
DECLARE $p3 NVarChar(1) -- String
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
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = 'я'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = 'я'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

INSERT BULK "TypeTable`2"(Id, Column, ColumnNullable)

-- DuckDB
DECLARE $value NVarChar(1) -- String
SET     $value = 'A'
DECLARE $nullableValue NVarChar(1) -- String
SET     $nullableValue = 'я'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = CAST($value AS VARCHAR) AND r.ColumnNullable = CAST($nullableValue AS VARCHAR)

