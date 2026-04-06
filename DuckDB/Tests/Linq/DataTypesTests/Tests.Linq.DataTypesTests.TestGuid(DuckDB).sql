-- DuckDB
DECLARE $Column  -- Guid
SET     $Column = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID
DECLARE $ColumnNullable  -- Guid
SET     $ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::UUID

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	GuidTable r
WHERE
	r."Column" = CAST($Column AS UUID) AND r.ColumnNullable = CAST($ColumnNullable AS UUID)

-- DuckDB

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	GuidTable r
WHERE
	r."Column" = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID AND
	r.ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::UUID

-- DuckDB

DELETE FROM
	GuidTable t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Column  -- Guid
SET     $Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID
DECLARE $ColumnNullable  -- Object
SET     $ColumnNullable = NULL

INSERT INTO GuidTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS UUID),
	CAST($ColumnNullable AS UUID)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Column  -- Guid
SET     $Column = 'a948600d-de21-4f74-8ac2-9516b287076e'::UUID
DECLARE $ColumnNullable  -- Guid
SET     $ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::UUID

INSERT INTO GuidTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Column AS UUID),
	CAST($ColumnNullable AS UUID)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	GuidTable t1

-- DuckDB

INSERT INTO GuidTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::UUID,NULL),
(2,'a948600d-de21-4f74-8ac2-9516b287076e'::UUID,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::UUID)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	GuidTable t1

INSERT BULK GuidTable(Id, Column, ColumnNullable)

-- DuckDB

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

