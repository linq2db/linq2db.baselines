-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
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
	r.`Column` = Timestamp('2020-02-29T00:00:00.000000Z') AND
	r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $p3 Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000000Z') AND
	r.ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000000Z') AND
	r.ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000000Z') AND
	r.ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000001Z') AND
	r.ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $p3 Timestamp -- DateTime2
SET     $p3 = Timestamp('2105-12-30T23:59:59.999999Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000001Z') AND
	r.ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $p3 Timestamp -- DateTime2
SET     $p3 = Timestamp('2105-12-30T23:59:59.999999Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000001Z') AND
	r.ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $p3 Timestamp -- DateTime2
SET     $p3 = Timestamp('2105-12-30T23:59:59.999999Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000000Z') AND
	r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000000Z') AND
	r.ColumnNullable = Timestamp('2105-12-31T00:00:00.000000Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Timestamp -- DateTime2
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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
	r.`Column` = Timestamp('1970-01-01T00:00:00.000001Z') AND
	r.ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Timestamp -- DateTime2
SET     $Column = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $ColumnNullable Timestamp -- DateTime2
SET     $ColumnNullable = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $p2 Timestamp -- DateTime2
SET     $p2 = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $p3 Timestamp -- DateTime2
SET     $p3 = Timestamp('2105-12-30T23:59:59.999999Z')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

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
DECLARE $value Timestamp -- DateTime2
SET     $value = Timestamp('1970-01-01T00:00:00.000001Z')
DECLARE $nullableValue Timestamp -- DateTime2
SET     $nullableValue = Timestamp('2105-12-30T23:59:59.999999Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

