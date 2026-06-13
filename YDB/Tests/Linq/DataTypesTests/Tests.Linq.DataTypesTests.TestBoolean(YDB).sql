-- YDB Ydb
DECLARE $Column Bool -- Boolean
SET     $Column = false
DECLARE $ColumnNullable Bool -- Boolean
SET     $ColumnNullable = true

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	BooleanTable r
WHERE
	r.`Column` = $Column AND r.ColumnNullable = $ColumnNullable

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	BooleanTable r
WHERE
	r.`Column` = false AND r.ColumnNullable = true

-- YDB Ydb

DELETE FROM
	BooleanTable

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Bool -- Boolean
SET     $Column = true
DECLARE $ColumnNullable Bool -- Boolean
SET     $ColumnNullable = NULL

INSERT INTO BooleanTable
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
DECLARE $Column Bool -- Boolean
SET     $Column = false
DECLARE $ColumnNullable Bool -- Boolean
SET     $ColumnNullable = true

INSERT INTO BooleanTable
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
	BooleanTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	BooleanTable

-- YDB Ydb

INSERT INTO BooleanTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(1,true,NULL),
(2,false,true)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	BooleanTable

INSERT ASYNC BULK BooleanTable(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

