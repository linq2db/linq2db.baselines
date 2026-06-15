-- YDB Ydb
DECLARE $Column Int32
SET     $Column = 2
DECLARE $ColumnNullable Int32
SET     $ColumnNullable = 3

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	IntEnumTable r
WHERE
	r.`Column` = $Column AND r.ColumnNullable = $ColumnNullable

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	IntEnumTable r
WHERE
	r.`Column` = 2 AND r.ColumnNullable = 3

-- YDB Ydb

DELETE FROM
	IntEnumTable

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int32
SET     $Column = 1
DECLARE $ColumnNullable Int32
SET     $ColumnNullable = NULL

INSERT INTO IntEnumTable
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
DECLARE $Column Int32
SET     $Column = 2
DECLARE $ColumnNullable Int32
SET     $ColumnNullable = 3

INSERT INTO IntEnumTable
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
	IntEnumTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	IntEnumTable

-- YDB Ydb

INSERT INTO IntEnumTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(1,1,NULL),
(2,2,3)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	IntEnumTable

INSERT ASYNC BULK IntEnumTable(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

