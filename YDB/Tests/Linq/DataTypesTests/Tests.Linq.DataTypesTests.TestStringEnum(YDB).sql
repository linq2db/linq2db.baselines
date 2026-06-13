-- YDB Ydb
DECLARE $Column Text(7) -- String
SET     $Column = 'value=2'u
DECLARE $ColumnNullable Text(8) -- String
SET     $ColumnNullable = 'value=33'u

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	StringEnumTable r
WHERE
	r.`Column` = $Column AND r.ColumnNullable = $ColumnNullable

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	StringEnumTable r
WHERE
	r.`Column` = 'value=2'u AND r.ColumnNullable = 'value=33'u

-- YDB Ydb

DELETE FROM
	StringEnumTable

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Text(5) -- String
SET     $Column = 'val=1'u
DECLARE $ColumnNullable Text -- String
SET     $ColumnNullable = NULL

INSERT INTO StringEnumTable
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
DECLARE $Column Text(7) -- String
SET     $Column = 'value=2'u
DECLARE $ColumnNullable Text(8) -- String
SET     $ColumnNullable = 'value=33'u

INSERT INTO StringEnumTable
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
	StringEnumTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	StringEnumTable

-- YDB Ydb

INSERT INTO StringEnumTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(1,'val=1'u,NULL),
(2,'value=2'u,'value=33'u)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	StringEnumTable

INSERT ASYNC BULK StringEnumTable(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

