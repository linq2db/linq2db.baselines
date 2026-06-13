-- YDB Ydb
DECLARE $Column Uint8 -- Byte
SET     $Column = 255ut
DECLARE $ColumnNullable Uint8 -- Byte
SET     $ColumnNullable = 2ut

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	ByteTable r
WHERE
	r.`Column` = $Column AND r.ColumnNullable = $ColumnNullable

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	ByteTable r
WHERE
	r.`Column` = 255ut AND r.ColumnNullable = 2ut

-- YDB Ydb

DELETE FROM
	ByteTable

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Uint8 -- Byte
SET     $Column = 1ut
DECLARE $ColumnNullable Uint8 -- Byte
SET     $ColumnNullable = NULL

INSERT INTO ByteTable
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
DECLARE $Column Uint8 -- Byte
SET     $Column = 255ut
DECLARE $ColumnNullable Uint8 -- Byte
SET     $ColumnNullable = 2ut

INSERT INTO ByteTable
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
	ByteTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	ByteTable

-- YDB Ydb

INSERT INTO ByteTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(1,1ut,NULL),
(2,255ut,2ut)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	ByteTable

INSERT ASYNC BULK ByteTable(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

