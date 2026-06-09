-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('2020-02-29T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Datetime64('2020-02-29T00:00:00Z') AND
	r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime64 -- Object
SET     $Column = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime64 -- Object
SET     $ColumnNullable = NULL

INSERT INTO `TypeTable\`2`
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
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('2020-02-29T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Datetime64 -- Object
SET     $p2 = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $p3 Datetime64 -- Object
SET     $p3 = NULL

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('2020-02-29T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('2020-02-29T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('2020-02-29T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Datetime64('0001-01-01T00:00:00Z') AND
	r.ColumnNullable = Datetime64('9999-12-31T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime64 -- Object
SET     $Column = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime64 -- Object
SET     $ColumnNullable = Timestamp('9999-12-31T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
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
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Datetime64 -- Object
SET     $p2 = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime64 -- Object
SET     $p3 = Timestamp('9999-12-31T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Datetime64('0001-01-01T00:00:00Z') AND
	r.ColumnNullable = Datetime64('9999-12-31T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime64 -- Object
SET     $Column = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime64 -- Object
SET     $ColumnNullable = Timestamp('9999-12-31T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
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
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Datetime64 -- Object
SET     $p2 = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime64 -- Object
SET     $p3 = Timestamp('9999-12-31T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-02T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Datetime64('0001-01-02T00:00:00Z') AND
	r.ColumnNullable = Datetime64('9999-12-30T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime64 -- Object
SET     $Column = Timestamp('0001-01-02T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime64 -- Object
SET     $ColumnNullable = Timestamp('9999-12-30T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
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
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-02T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Datetime64 -- Object
SET     $p2 = Timestamp('0001-01-02T00:00:00.000000Z')
DECLARE $p3 Datetime64 -- Object
SET     $p3 = Timestamp('9999-12-30T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-02T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-02T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-02T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Datetime64('0001-01-01T00:00:00Z') AND
	r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime64 -- Object
SET     $Column = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime64 -- Object
SET     $ColumnNullable = NULL

INSERT INTO `TypeTable\`2`
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
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Datetime64 -- Object
SET     $p2 = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime64 -- Object
SET     $p3 = NULL

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Datetime64('0001-01-01T00:00:00Z') AND
	r.ColumnNullable = Datetime64('9999-12-31T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime64 -- Object
SET     $Column = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime64 -- Object
SET     $ColumnNullable = Timestamp('9999-12-31T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
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
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Datetime64 -- Object
SET     $p2 = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime64 -- Object
SET     $p3 = Timestamp('9999-12-31T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb
DECLARE $value Datetime64 -- Object
SET     $value = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime64 -- Object
SET     $nullableValue = Timestamp('9999-12-31T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Unwrap(CAST(0 as Datetime64)) AND r.ColumnNullable IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Unwrap(CAST(0 as Datetime64)) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
(
	$Id,
	Unwrap(CAST(0 as Datetime64)),
	NULL
)

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Unwrap(CAST(0 as Datetime64)) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Datetime64 -- Object
SET     $p2 = 0l
DECLARE $p3 Datetime64 -- Object
SET     $p3 = NULL

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Unwrap(CAST(0 as Datetime64)) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Unwrap(CAST(0 as Datetime64)) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

INSERT ASYNC BULK TypeTable`2(Id, Column, ColumnNullable)

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Unwrap(CAST(0 as Datetime64)) AND r.ColumnNullable IS NULL

