-- YDB Ydb
DECLARE $Column Date
SET     $Column = Date('2020-02-29')
DECLARE $ColumnNullable Date
SET     $ColumnNullable = Date('2020-01-01')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r.`Column` = $Column AND r.ColumnNullable = $ColumnNullable

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r.`Column` = Date('2020-02-29') AND r.ColumnNullable = Date('2020-01-01')

-- YDB Ydb

DELETE FROM
	DateOnlyTable

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Date
SET     $Column = Date('1980-01-01')
DECLARE $ColumnNullable Date
SET     $ColumnNullable = NULL

INSERT INTO DateOnlyTable
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
DECLARE $Column Date
SET     $Column = Date('2020-02-29')
DECLARE $ColumnNullable Date
SET     $ColumnNullable = Date('2020-01-01')

INSERT INTO DateOnlyTable
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
	DateOnlyTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	DateOnlyTable

-- YDB Ydb

INSERT INTO DateOnlyTable
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(1,Date('1980-01-01'),NULL),
(2,Date('2020-02-29'),Date('2020-01-01'))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DELETE FROM
	DateOnlyTable

INSERT ASYNC BULK DateOnlyTable(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Column` as Column_1,
	t1.ColumnNullable as ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

