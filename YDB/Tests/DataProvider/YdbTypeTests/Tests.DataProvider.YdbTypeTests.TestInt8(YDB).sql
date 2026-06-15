-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = -128t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = -128t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = -128t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
	r.`Column` = 127t AND r.ColumnNullable = -128t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = -128t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
	r.`Column` = 127t AND r.ColumnNullable = 0t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 0t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = 0t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
	r.`Column` = 127t AND r.ColumnNullable = 0t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 0t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = 0t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
	r.`Column` = 127t AND r.ColumnNullable = 0t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 0t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = 0t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
	r.`Column` = 127t AND r.ColumnNullable = 0t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 0t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = 0t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
	r.`Column` = 127t AND r.ColumnNullable = -128t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = -128t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = -128t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = -128t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = -128t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
	r.`Column` = 127t AND r.ColumnNullable = -128t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = -128t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = -128t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = -128t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = -128t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
	r.`Column` = 127t AND r.ColumnNullable = -128t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = -128t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = -128t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = -128t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = -128t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
	r.`Column` = 127t AND r.ColumnNullable = -128t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = -128t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = -128t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = -128t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = -128t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
	r.`Column` = 127t AND r.ColumnNullable = -128t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = -128t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = -128t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = -128t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = -128t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
	r.`Column` = 0t AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 0t
DECLARE $ColumnNullable Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 0t
DECLARE $p3 Int8 -- SByte
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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

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
DECLARE $value Int8 -- SByte
SET     $value = 0t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
	r.`Column` = 127t AND r.ColumnNullable = -128t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = 127t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = 127t
DECLARE $p3 Int8 -- SByte
SET     $p3 = -128t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

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
DECLARE $value Int8 -- SByte
SET     $value = 127t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = -128t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
	r.`Column` = -128t AND r.ColumnNullable = 127t

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Int8 -- SByte
SET     $Column = -128t
DECLARE $ColumnNullable Int8 -- SByte
SET     $ColumnNullable = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $p2 Int8 -- SByte
SET     $p2 = -128t
DECLARE $p3 Int8 -- SByte
SET     $p3 = 127t

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

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
DECLARE $value Int8 -- SByte
SET     $value = -128t
DECLARE $nullableValue Int8 -- SByte
SET     $nullableValue = 127t

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

