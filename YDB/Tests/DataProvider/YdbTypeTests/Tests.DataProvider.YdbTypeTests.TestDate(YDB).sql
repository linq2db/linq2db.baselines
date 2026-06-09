-- YDB Ydb
DECLARE $value Date
SET     $value = Date('2020-02-29')

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
	r.`Column` = Date('2020-02-29') AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Date
SET     $Column = Date('2020-02-29')
DECLARE $ColumnNullable Date
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
DECLARE $value Date
SET     $value = Date('2020-02-29')

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
DECLARE $p2 Date
SET     $p2 = Date('2020-02-29')
DECLARE $p3 Date
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
DECLARE $value Date
SET     $value = Date('2020-02-29')

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
DECLARE $value Date
SET     $value = Date('2020-02-29')

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
DECLARE $value Date
SET     $value = Date('2020-02-29')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Date
SET     $value = Date('1970-01-01')
DECLARE $nullableValue Date
SET     $nullableValue = Date('2105-12-31')

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
	r.`Column` = Date('1970-01-01') AND r.ColumnNullable = Date('2105-12-31')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Date
SET     $Column = Date('1970-01-01')
DECLARE $ColumnNullable Date
SET     $ColumnNullable = Date('2105-12-31')

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
DECLARE $value Date
SET     $value = Date('1970-01-01')
DECLARE $nullableValue Date
SET     $nullableValue = Date('2105-12-31')

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
DECLARE $p2 Date
SET     $p2 = Date('1970-01-01')
DECLARE $p3 Date
SET     $p3 = Date('2105-12-31')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Date
SET     $value = Date('1970-01-01')
DECLARE $nullableValue Date
SET     $nullableValue = Date('2105-12-31')

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
DECLARE $value Date
SET     $value = Date('1970-01-01')
DECLARE $nullableValue Date
SET     $nullableValue = Date('2105-12-31')

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
DECLARE $value Date
SET     $value = Date('1970-01-01')
DECLARE $nullableValue Date
SET     $nullableValue = Date('2105-12-31')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Date
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
	r.`Column` = Date('2020-02-29') AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Date
SET     $Column = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $ColumnNullable Date
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
DECLARE $value Date
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
DECLARE $p2 Date
SET     $p2 = Timestamp('2020-02-29T00:00:00.000000Z')
DECLARE $p3 Date
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
DECLARE $value Date
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
DECLARE $value Date
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
DECLARE $value Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
	r.`Column` = Date('1970-01-01') AND r.ColumnNullable = Date('2105-12-31')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Date
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
DECLARE $p2 Date
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
DECLARE $value Date
SET     $value = Timestamp('2105-12-31T00:00:00.000000Z')

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
	r.`Column` = Date('2105-12-31') AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Date
SET     $Column = Timestamp('2105-12-31T00:00:00.000000Z')
DECLARE $ColumnNullable Date
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
DECLARE $value Date
SET     $value = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $p2 Date
SET     $p2 = Timestamp('2105-12-31T00:00:00.000000Z')
DECLARE $p3 Date
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
DECLARE $value Date
SET     $value = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Date
SET     $value = Timestamp('2105-12-31T00:00:00.000000Z')

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
DECLARE $value Date
SET     $value = Timestamp('2105-12-31T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
	r.`Column` = Date('1970-01-01') AND r.ColumnNullable = Date('2105-12-31')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Date
SET     $Column = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $ColumnNullable Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
DECLARE $p2 Date
SET     $p2 = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $p3 Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
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
DECLARE $value Date
SET     $value = Timestamp('1970-01-01T00:00:00.000000Z')
DECLARE $nullableValue Date
SET     $nullableValue = Timestamp('2105-12-31T00:00:00.000000Z')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

