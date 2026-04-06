-- DuckDB
DECLARE $Column NVarChar(7) -- String
SET     $Column = 'value=2'
DECLARE $ColumnNullable NVarChar(8) -- String
SET     $ColumnNullable = 'value=33'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	StringEnumTable r
WHERE
	r."Column" = CAST($Column AS VARCHAR) AND r.ColumnNullable = CAST($ColumnNullable AS VARCHAR)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	StringEnumTable r
WHERE
	r."Column" = 'value=2' AND r.ColumnNullable = 'value=33'

-- DuckDB

DELETE FROM
	StringEnumTable t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column NVarChar(5) -- String
SET     $Column = 'val=1'
DECLARE $ColumnNullable  -- Object
SET     $ColumnNullable = NULL

INSERT INTO StringEnumTable
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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Column NVarChar(7) -- String
SET     $Column = 'value=2'
DECLARE $ColumnNullable NVarChar(8) -- String
SET     $ColumnNullable = 'value=33'

INSERT INTO StringEnumTable
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

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	StringEnumTable t1

-- DuckDB

INSERT INTO StringEnumTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	StringEnumTable t1

INSERT BULK StringEnumTable(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

