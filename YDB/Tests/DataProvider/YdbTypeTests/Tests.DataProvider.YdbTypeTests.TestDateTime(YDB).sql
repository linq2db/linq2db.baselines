-- YDB Ydb
DECLARE $value Datetime -- DateTime
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
	r.`Column` = Datetime('2020-02-29T00:00:00Z') AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
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
DECLARE $value Datetime -- DateTime
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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $p3 Datetime -- DateTime
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
DECLARE $value Datetime -- DateTime
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
DECLARE $value Datetime -- DateTime
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
DECLARE $value Datetime -- DateTime
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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:00Z') AND r.ColumnNullable = Datetime('2105-12-31T00:00:00Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-31T00:00:00.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:00Z') AND r.ColumnNullable = Datetime('2105-12-31T00:00:00Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-31T00:00:00.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:00Z') AND r.ColumnNullable = Datetime('2105-12-31T00:00:00Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-31T00:00:00.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:01Z') AND r.ColumnNullable = Datetime('2105-12-30T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-30T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:01Z') AND r.ColumnNullable = Datetime('2105-12-30T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-30T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:01Z') AND r.ColumnNullable = Datetime('2105-12-30T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-30T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:00Z') AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime -- DateTime
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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:00Z') AND r.ColumnNullable = Datetime('2105-12-31T00:00:00Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-31T00:00:00.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
	r.`Column` = Datetime('1970-01-01T00:00:01Z') AND r.ColumnNullable = Datetime('2105-12-30T23:59:59Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Datetime -- DateTime
SET     $Column = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $ColumnNullable Datetime -- DateTime
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $p2 Datetime -- DateTime
SET     $p2 = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $p3 Datetime -- DateTime
SET     $p3 = Timestamp('2105-12-30T23:59:59.000000Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

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
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('1970-01-01T00:00:01.000000Z')
DECLARE $nullableValue Datetime -- DateTime
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

