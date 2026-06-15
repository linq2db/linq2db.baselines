-- YDB Ydb
DECLARE $value Interval64 -- Object
SET     $value = Interval('P10675199DT2H48M5.47758S')

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
	r.`Column` = Interval64('P10675199DT2H48M5.47758S') AND
	r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Interval64 -- Object
SET     $Column = Interval('P10675199DT2H48M5.47758S')
DECLARE $ColumnNullable Interval64 -- Object
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
DECLARE $value Interval64 -- Object
SET     $value = Interval('P10675199DT2H48M5.47758S')

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
DECLARE $p2 Interval64 -- Object
SET     $p2 = Interval('P10675199DT2H48M5.47758S')
DECLARE $p3 Interval64 -- Object
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
DECLARE $value Interval64 -- Object
SET     $value = Interval('P10675199DT2H48M5.47758S')

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
DECLARE $value Interval64 -- Object
SET     $value = Interval('P10675199DT2H48M5.47758S')

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
DECLARE $value Interval64 -- Object
SET     $value = Interval('P10675199DT2H48M5.47758S')

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Interval64 -- Object
SET     $value = Interval('-P10675199DT2H48M5.47758S')
DECLARE $nullableValue Interval64 -- Object
SET     $nullableValue = Interval('P10675199DT2H48M5.47758S')

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
	r.`Column` = Interval64('-P10675199DT2H48M5.47758S') AND
	r.ColumnNullable = Interval64('P10675199DT2H48M5.47758S')

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Interval64 -- Object
SET     $Column = Interval('-P10675199DT2H48M5.47758S')
DECLARE $ColumnNullable Interval64 -- Object
SET     $ColumnNullable = Interval('P10675199DT2H48M5.47758S')

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
DECLARE $value Interval64 -- Object
SET     $value = Interval('-P10675199DT2H48M5.47758S')
DECLARE $nullableValue Interval64 -- Object
SET     $nullableValue = Interval('P10675199DT2H48M5.47758S')

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
DECLARE $p2 Interval64 -- Object
SET     $p2 = Interval('-P10675199DT2H48M5.47758S')
DECLARE $p3 Interval64 -- Object
SET     $p3 = Interval('P10675199DT2H48M5.47758S')

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Interval64 -- Object
SET     $value = Interval('-P10675199DT2H48M5.47758S')
DECLARE $nullableValue Interval64 -- Object
SET     $nullableValue = Interval('P10675199DT2H48M5.47758S')

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
DECLARE $value Interval64 -- Object
SET     $value = Interval('-P10675199DT2H48M5.47758S')
DECLARE $nullableValue Interval64 -- Object
SET     $nullableValue = Interval('P10675199DT2H48M5.47758S')

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
DECLARE $value Interval64 -- Object
SET     $value = Interval('-P10675199DT2H48M5.47758S')
DECLARE $nullableValue Interval64 -- Object
SET     $nullableValue = Interval('P10675199DT2H48M5.47758S')

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
	r.`Column` = Unwrap(CAST(0 as Interval64)) AND r.ColumnNullable IS NULL

-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = Unwrap(CAST(0 as Interval64)) AND r.ColumnNullable IS NULL

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
	Unwrap(CAST(0 as Interval64)),
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
	r.`Column` = Unwrap(CAST(0 as Interval64)) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $p1 Int32
SET     $p1 = 1
DECLARE $p2 Interval64 -- Object
SET     $p2 = 0l
DECLARE $p3 Interval64 -- Object
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
	r.`Column` = Unwrap(CAST(0 as Interval64)) AND r.ColumnNullable IS NULL

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
	r.`Column` = Unwrap(CAST(0 as Interval64)) AND r.ColumnNullable IS NULL

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
	r.`Column` = Unwrap(CAST(0 as Interval64)) AND r.ColumnNullable IS NULL

