-- YDB Ydb
DECLARE $Column Uuid -- Guid
SET     $Column = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')
DECLARE $ColumnNullable Uuid -- Guid
SET     $ColumnNullable = Uuid('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	GuidTable r
WHERE
	r.`Column` = $Column AND r.ColumnNullable = $ColumnNullable

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	GuidTable r
WHERE
	r.`Column` = Uuid('a948600d-de21-4f74-8ac2-9516b287076e') AND
	r.ColumnNullable = Uuid('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

-- YDB Ydb

DELETE FROM
	GuidTable

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Uuid -- Guid
SET     $Column = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $ColumnNullable Uuid -- Guid
SET     $ColumnNullable = NULL

INSERT INTO GuidTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Column Uuid -- Guid
SET     $Column = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')
DECLARE $ColumnNullable Uuid -- Guid
SET     $ColumnNullable = Uuid('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

INSERT INTO GuidTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(
	$Id,
	$Column,
	$ColumnNullable
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	GuidTable

-- YDB Ydb

INSERT INTO GuidTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(1,Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL),
(2,Uuid('a948600d-de21-4f74-8ac2-9516b287076e'),Uuid('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	GuidTable

INSERT ASYNC BULK GuidTable(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

