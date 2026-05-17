-- DuckDB
DECLARE $value  -- Guid
SET     $value = '00000000-0000-0000-0000-000000000000'::UUID

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
	r."Column" = '00000000-0000-0000-0000-000000000000'::UUID AND
	r.ColumnNullable IS NULL

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Guid
SET     $Column = '00000000-0000-0000-0000-000000000000'::UUID
DECLARE $ColumnNullable  -- Guid
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
DECLARE $value  -- Guid
SET     $value = '00000000-0000-0000-0000-000000000000'::UUID

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
DECLARE $p2  -- Guid
SET     $p2 = '00000000-0000-0000-0000-000000000000'::UUID

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,NULL)

-- DuckDB
DECLARE $value  -- Guid
SET     $value = '00000000-0000-0000-0000-000000000000'::UUID

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
DECLARE $value  -- Guid
SET     $value = '00000000-0000-0000-0000-000000000000'::UUID

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
DECLARE $value  -- Guid
SET     $value = '00000000-0000-0000-0000-000000000000'::UUID

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable IS NULL

-- DuckDB
DECLARE $value  -- Guid
SET     $value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $nullableValue  -- Guid
SET     $nullableValue = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

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
	r."Column" = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

-- DuckDB

DELETE FROM
	"TypeTable`2" t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Guid
SET     $Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $ColumnNullable  -- Guid
SET     $ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

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
DECLARE $value  -- Guid
SET     $value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $nullableValue  -- Guid
SET     $nullableValue = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

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
DECLARE $p2  -- Guid
SET     $p2 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $p3  -- Guid
SET     $p3 = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

INSERT INTO "TypeTable`2"
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- DuckDB
DECLARE $value  -- Guid
SET     $value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $nullableValue  -- Guid
SET     $nullableValue = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

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
DECLARE $value  -- Guid
SET     $value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $nullableValue  -- Guid
SET     $nullableValue = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

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
DECLARE $value  -- Guid
SET     $value = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $nullableValue  -- Guid
SET     $nullableValue = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	"TypeTable`2" r
WHERE
	r."Column" = $value AND r.ColumnNullable = $nullableValue

