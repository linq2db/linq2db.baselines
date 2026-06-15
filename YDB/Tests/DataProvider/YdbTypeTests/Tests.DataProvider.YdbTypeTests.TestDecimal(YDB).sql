-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('6251426433751.935439503', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('-6251426433752.935439503', 22, 9)

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
	r.`Column` = Decimal('6251426433751.935439503', 22, 9) AND
	r.ColumnNullable = Decimal('-6251426433752.935439503', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 9)
SET     $Column = Decimal('6251426433751.935439503', 22, 9)
DECLARE $ColumnNullable Decimal(22, 9)
SET     $ColumnNullable = Decimal('-6251426433752.935439503', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('6251426433751.935439503', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('-6251426433752.935439503', 22, 9)

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
DECLARE $p2 Decimal(22, 9)
SET     $p2 = Decimal('6251426433751.935439503', 22, 9)
DECLARE $p3 Decimal(22, 9)
SET     $p3 = Decimal('-6251426433752.935439503', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('6251426433751.935439503', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('-6251426433752.935439503', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('6251426433751.935439503', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('-6251426433752.935439503', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('6251426433751.935439503', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('-6251426433752.935439503', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 1, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(1, 0)
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(1, 0)
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('-9', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('9', 22, 9)

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
	r.`Column` = Decimal('-9', 1, 0) AND r.ColumnNullable = Decimal('9', 1, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('-9', 22, 9)
DECLARE $ColumnNullable Decimal(1, 0)
SET     $ColumnNullable = Decimal('9', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('-9', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('9', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('-9', 22, 9)
DECLARE $p3 Decimal(1, 0)
SET     $p3 = Decimal('9', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('-9', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('9', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('-9', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('9', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('-9', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('9', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 1, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(1, 0)
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
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(1, 0)
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
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = { "low128": "9" }

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
	r.`Column` = Decimal('-9', 1, 0) AND r.ColumnNullable = Decimal('9', 1, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $ColumnNullable Decimal(1, 0)
SET     $ColumnNullable = { "low128": "9" }

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
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = { "low128": "9" }

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $p3 Decimal(1, 0)
SET     $p3 = { "low128": "9" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = { "low128": "9" }

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
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = { "low128": "9" }

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
DECLARE $value Decimal(1, 0)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = { "low128": "9" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 1, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 1)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(1, 1)
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
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 1)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(1, 1)
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
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('-0.9', 22, 9)
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = Decimal('0.9', 22, 9)

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
	r.`Column` = Decimal('-0.9', 1, 1) AND r.ColumnNullable = Decimal('0.9', 1, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 1)
SET     $Column = Decimal('-0.9', 22, 9)
DECLARE $ColumnNullable Decimal(1, 1)
SET     $ColumnNullable = Decimal('0.9', 22, 9)

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
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('-0.9', 22, 9)
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = Decimal('0.9', 22, 9)

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
DECLARE $p2 Decimal(1, 1)
SET     $p2 = Decimal('-0.9', 22, 9)
DECLARE $p3 Decimal(1, 1)
SET     $p3 = Decimal('0.9', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('-0.9', 22, 9)
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = Decimal('0.9', 22, 9)

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
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('-0.9', 22, 9)
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = Decimal('0.9', 22, 9)

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
DECLARE $value Decimal(1, 1)
SET     $value = Decimal('-0.9', 22, 9)
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = Decimal('0.9', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 1, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 1)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(1, 1)
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
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(1, 1)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(1, 1)
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
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = { "low128": "9" }

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
	r.`Column` = Decimal('-0.9', 1, 1) AND r.ColumnNullable = Decimal('0.9', 1, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 1)
SET     $Column = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $ColumnNullable Decimal(1, 1)
SET     $ColumnNullable = { "low128": "9" }

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
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = { "low128": "9" }

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
DECLARE $p2 Decimal(1, 1)
SET     $p2 = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $p3 Decimal(1, 1)
SET     $p3 = { "low128": "9" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = { "low128": "9" }

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
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = { "low128": "9" }

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
DECLARE $value Decimal(1, 1)
SET     $value = { "low128": "18446744073709551607", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(1, 1)
SET     $nullableValue = { "low128": "9" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 2, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(2, 0)
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
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(2, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(2, 0)
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
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('-99', 22, 9)
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = Decimal('99', 22, 9)

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
	r.`Column` = Decimal('-99', 2, 0) AND r.ColumnNullable = Decimal('99', 2, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 0)
SET     $Column = Decimal('-99', 22, 9)
DECLARE $ColumnNullable Decimal(2, 0)
SET     $ColumnNullable = Decimal('99', 22, 9)

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
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('-99', 22, 9)
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = Decimal('99', 22, 9)

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
DECLARE $p2 Decimal(2, 0)
SET     $p2 = Decimal('-99', 22, 9)
DECLARE $p3 Decimal(2, 0)
SET     $p3 = Decimal('99', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('-99', 22, 9)
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = Decimal('99', 22, 9)

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
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('-99', 22, 9)
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = Decimal('99', 22, 9)

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
DECLARE $value Decimal(2, 0)
SET     $value = Decimal('-99', 22, 9)
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = Decimal('99', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 2, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 0)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(2, 0)
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
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(2, 0)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(2, 0)
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
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = { "low128": "99" }

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
	r.`Column` = Decimal('-99', 2, 0) AND r.ColumnNullable = Decimal('99', 2, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 0)
SET     $Column = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $ColumnNullable Decimal(2, 0)
SET     $ColumnNullable = { "low128": "99" }

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
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $p2 Decimal(2, 0)
SET     $p2 = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $p3 Decimal(2, 0)
SET     $p3 = { "low128": "99" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $value Decimal(2, 0)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 0)
SET     $nullableValue = { "low128": "99" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 2, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 1)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(2, 1)
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
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(2, 1)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(2, 1)
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
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('-9.9', 22, 9)
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = Decimal('9.9', 22, 9)

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
	r.`Column` = Decimal('-9.9', 2, 1) AND r.ColumnNullable = Decimal('9.9', 2, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 1)
SET     $Column = Decimal('-9.9', 22, 9)
DECLARE $ColumnNullable Decimal(2, 1)
SET     $ColumnNullable = Decimal('9.9', 22, 9)

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
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('-9.9', 22, 9)
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = Decimal('9.9', 22, 9)

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
DECLARE $p2 Decimal(2, 1)
SET     $p2 = Decimal('-9.9', 22, 9)
DECLARE $p3 Decimal(2, 1)
SET     $p3 = Decimal('9.9', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('-9.9', 22, 9)
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = Decimal('9.9', 22, 9)

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
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('-9.9', 22, 9)
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = Decimal('9.9', 22, 9)

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
DECLARE $value Decimal(2, 1)
SET     $value = Decimal('-9.9', 22, 9)
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = Decimal('9.9', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 2, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 1)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(2, 1)
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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(2, 1)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(2, 1)
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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "99" }

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
	r.`Column` = Decimal('-9.9', 2, 1) AND r.ColumnNullable = Decimal('9.9', 2, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 1)
SET     $Column = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $ColumnNullable Decimal(2, 1)
SET     $ColumnNullable = { "low128": "99" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $p2 Decimal(2, 1)
SET     $p2 = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $p3 Decimal(2, 1)
SET     $p3 = { "low128": "99" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "99" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
	r.`Column` = Decimal('1.2', 2, 1) AND r.ColumnNullable = Decimal('-2.1', 2, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 1)
SET     $Column = { "low128": "12" }
DECLARE $ColumnNullable Decimal(2, 1)
SET     $ColumnNullable = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $p2 Decimal(2, 1)
SET     $p2 = { "low128": "12" }
DECLARE $p3 Decimal(2, 1)
SET     $p3 = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(2, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(2, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 2, 2) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 2)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(2, 2)
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
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(2, 2)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(2, 2)
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
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('-0.99', 22, 9)
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = Decimal('0.99', 22, 9)

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
	r.`Column` = Decimal('-0.99', 2, 2) AND r.ColumnNullable = Decimal('0.99', 2, 2)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 2)
SET     $Column = Decimal('-0.99', 22, 9)
DECLARE $ColumnNullable Decimal(2, 2)
SET     $ColumnNullable = Decimal('0.99', 22, 9)

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
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('-0.99', 22, 9)
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = Decimal('0.99', 22, 9)

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
DECLARE $p2 Decimal(2, 2)
SET     $p2 = Decimal('-0.99', 22, 9)
DECLARE $p3 Decimal(2, 2)
SET     $p3 = Decimal('0.99', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('-0.99', 22, 9)
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = Decimal('0.99', 22, 9)

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
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('-0.99', 22, 9)
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = Decimal('0.99', 22, 9)

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
DECLARE $value Decimal(2, 2)
SET     $value = Decimal('-0.99', 22, 9)
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = Decimal('0.99', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 2, 2) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 2)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(2, 2)
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
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(2, 2)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(2, 2)
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
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = { "low128": "99" }

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
	r.`Column` = Decimal('-0.99', 2, 2) AND r.ColumnNullable = Decimal('0.99', 2, 2)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(2, 2)
SET     $Column = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $ColumnNullable Decimal(2, 2)
SET     $ColumnNullable = { "low128": "99" }

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
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $p2 Decimal(2, 2)
SET     $p2 = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $p3 Decimal(2, 2)
SET     $p3 = { "low128": "99" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = { "low128": "99" }

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
DECLARE $value Decimal(2, 2)
SET     $value = { "low128": "18446744073709551517", "high128": "18446744073709551615" }
DECLARE $nullableValue Decimal(2, 2)
SET     $nullableValue = { "low128": "99" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 21, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(21, 0)
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
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(21, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(21, 0)
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
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('-999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = Decimal('999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-999999999999999999999', 21, 0) AND
	r.ColumnNullable = Decimal('999999999999999999999', 21, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 0)
SET     $Column = Decimal('-999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(21, 0)
SET     $ColumnNullable = Decimal('999999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('-999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = Decimal('999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(21, 0)
SET     $p2 = Decimal('-999999999999999999999', 22, 9)
DECLARE $p3 Decimal(21, 0)
SET     $p3 = Decimal('999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('-999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = Decimal('999999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('-999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = Decimal('999999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 0)
SET     $value = Decimal('-999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = Decimal('999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 21, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 0)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(21, 0)
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
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(21, 0)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(21, 0)
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
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
	r.`Column` = Decimal('-999999999999999999999', 21, 0) AND
	r.ColumnNullable = Decimal('999999999999999999999', 21, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 0)
SET     $Column = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $ColumnNullable Decimal(21, 0)
SET     $ColumnNullable = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $p2 Decimal(21, 0)
SET     $p2 = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $p3 Decimal(21, 0)
SET     $p3 = { "low128": "3875820019684212735", "high128": "54" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 0)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 0)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 21, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 1)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(21, 1)
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
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(21, 1)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(21, 1)
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
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('-99999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = Decimal('99999999999999999999.9', 22, 9)

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
	r.`Column` = Decimal('-99999999999999999999.9', 21, 1) AND
	r.ColumnNullable = Decimal('99999999999999999999.9', 21, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 1)
SET     $Column = Decimal('-99999999999999999999.9', 22, 9)
DECLARE $ColumnNullable Decimal(21, 1)
SET     $ColumnNullable = Decimal('99999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('-99999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = Decimal('99999999999999999999.9', 22, 9)

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
DECLARE $p2 Decimal(21, 1)
SET     $p2 = Decimal('-99999999999999999999.9', 22, 9)
DECLARE $p3 Decimal(21, 1)
SET     $p3 = Decimal('99999999999999999999.9', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('-99999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = Decimal('99999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('-99999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = Decimal('99999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(21, 1)
SET     $value = Decimal('-99999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = Decimal('99999999999999999999.9', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 21, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 1)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(21, 1)
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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(21, 1)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(21, 1)
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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
	r.`Column` = Decimal('-99999999999999999999.9', 21, 1) AND
	r.ColumnNullable = Decimal('99999999999999999999.9', 21, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 1)
SET     $Column = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $ColumnNullable Decimal(21, 1)
SET     $ColumnNullable = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $p2 Decimal(21, 1)
SET     $p2 = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $p3 Decimal(21, 1)
SET     $p3 = { "low128": "3875820019684212735", "high128": "54" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
	r.`Column` = Decimal('1.2', 21, 1) AND r.ColumnNullable = Decimal('-2.1', 21, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 1)
SET     $Column = { "low128": "12" }
DECLARE $ColumnNullable Decimal(21, 1)
SET     $ColumnNullable = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $p2 Decimal(21, 1)
SET     $p2 = { "low128": "12" }
DECLARE $p3 Decimal(21, 1)
SET     $p3 = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(21, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(21, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 21, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 9)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(21, 9)
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
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(21, 9)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(21, 9)
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
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('-999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = Decimal('999999999999.999999999', 22, 9)

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
	r.`Column` = Decimal('-999999999999.999999999', 21, 9) AND
	r.ColumnNullable = Decimal('999999999999.999999999', 21, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 9)
SET     $Column = Decimal('-999999999999.999999999', 22, 9)
DECLARE $ColumnNullable Decimal(21, 9)
SET     $ColumnNullable = Decimal('999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('-999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = Decimal('999999999999.999999999', 22, 9)

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
DECLARE $p2 Decimal(21, 9)
SET     $p2 = Decimal('-999999999999.999999999', 22, 9)
DECLARE $p3 Decimal(21, 9)
SET     $p3 = Decimal('999999999999.999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('-999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = Decimal('999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('-999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = Decimal('999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(21, 9)
SET     $value = Decimal('-999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = Decimal('999999999999.999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 21, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 9)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(21, 9)
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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(21, 9)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(21, 9)
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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
	r.`Column` = Decimal('-999999999999.999999999', 21, 9) AND
	r.ColumnNullable = Decimal('999999999999.999999999', 21, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 9)
SET     $Column = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $ColumnNullable Decimal(21, 9)
SET     $ColumnNullable = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $p2 Decimal(21, 9)
SET     $p2 = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $p3 Decimal(21, 9)
SET     $p3 = { "low128": "3875820019684212735", "high128": "54" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
	r.`Column` = Decimal('1.2', 21, 9) AND r.ColumnNullable = Decimal('-2.1', 21, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 9)
SET     $Column = { "low128": "1200000000" }
DECLARE $ColumnNullable Decimal(21, 9)
SET     $ColumnNullable = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $p2 Decimal(21, 9)
SET     $p2 = { "low128": "1200000000" }
DECLARE $p3 Decimal(21, 9)
SET     $p3 = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(21, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(21, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 21, 20) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 20)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(21, 20)
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
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(21, 20)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(21, 20)
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
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('-9.99999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = Decimal('9.99999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-9.99999999999999999999', 21, 20) AND
	r.ColumnNullable = Decimal('9.99999999999999999999', 21, 20)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 20)
SET     $Column = Decimal('-9.99999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(21, 20)
SET     $ColumnNullable = Decimal('9.99999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('-9.99999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = Decimal('9.99999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(21, 20)
SET     $p2 = Decimal('-9.99999999999999999999', 22, 9)
DECLARE $p3 Decimal(21, 20)
SET     $p3 = Decimal('9.99999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('-9.99999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = Decimal('9.99999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('-9.99999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = Decimal('9.99999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 20)
SET     $value = Decimal('-9.99999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = Decimal('9.99999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 21, 20) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 20)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(21, 20)
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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(21, 20)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(21, 20)
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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
	r.`Column` = Decimal('-9.99999999999999999999', 21, 20) AND
	r.ColumnNullable = Decimal('9.99999999999999999999', 21, 20)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 20)
SET     $Column = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $ColumnNullable Decimal(21, 20)
SET     $ColumnNullable = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $p2 Decimal(21, 20)
SET     $p2 = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $p3 Decimal(21, 20)
SET     $p3 = { "low128": "3875820019684212735", "high128": "54" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "9319535557742690304", "high128": "6" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "11360928884514619392", "high128": "18446744073709551604" }

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
	r.`Column` = Decimal('1.2', 21, 20) AND r.ColumnNullable = Decimal('-2.1', 21, 20)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 20)
SET     $Column = { "low128": "9319535557742690304", "high128": "6" }
DECLARE $ColumnNullable Decimal(21, 20)
SET     $ColumnNullable = { "low128": "11360928884514619392", "high128": "18446744073709551604" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "9319535557742690304", "high128": "6" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "11360928884514619392", "high128": "18446744073709551604" }

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
DECLARE $p2 Decimal(21, 20)
SET     $p2 = { "low128": "9319535557742690304", "high128": "6" }
DECLARE $p3 Decimal(21, 20)
SET     $p3 = { "low128": "11360928884514619392", "high128": "18446744073709551604" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "9319535557742690304", "high128": "6" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "11360928884514619392", "high128": "18446744073709551604" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "9319535557742690304", "high128": "6" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "11360928884514619392", "high128": "18446744073709551604" }

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
DECLARE $value Decimal(21, 20)
SET     $value = { "low128": "9319535557742690304", "high128": "6" }
DECLARE $nullableValue Decimal(21, 20)
SET     $nullableValue = { "low128": "11360928884514619392", "high128": "18446744073709551604" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 21, 21) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 21)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(21, 21)
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
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(21, 21)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(21, 21)
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
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('-0.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = Decimal('0.999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-0.999999999999999999999', 21, 21) AND
	r.ColumnNullable = Decimal('0.999999999999999999999', 21, 21)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 21)
SET     $Column = Decimal('-0.999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(21, 21)
SET     $ColumnNullable = Decimal('0.999999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('-0.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = Decimal('0.999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(21, 21)
SET     $p2 = Decimal('-0.999999999999999999999', 22, 9)
DECLARE $p3 Decimal(21, 21)
SET     $p3 = Decimal('0.999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('-0.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = Decimal('0.999999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('-0.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = Decimal('0.999999999999999999999', 22, 9)

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
DECLARE $value Decimal(21, 21)
SET     $value = Decimal('-0.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = Decimal('0.999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 21, 21) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 21)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(21, 21)
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
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(21, 21)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(21, 21)
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
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
	r.`Column` = Decimal('-0.999999999999999999999', 21, 21) AND
	r.ColumnNullable = Decimal('0.999999999999999999999', 21, 21)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(21, 21)
SET     $Column = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $ColumnNullable Decimal(21, 21)
SET     $ColumnNullable = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $p2 Decimal(21, 21)
SET     $p2 = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $p3 Decimal(21, 21)
SET     $p3 = { "low128": "3875820019684212735", "high128": "54" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

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
DECLARE $value Decimal(21, 21)
SET     $value = { "low128": "14570924054025338881", "high128": "18446744073709551561" }
DECLARE $nullableValue Decimal(21, 21)
SET     $nullableValue = { "low128": "3875820019684212735", "high128": "54" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(22, 0)
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
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(22, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(22, 0)
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
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('-9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = Decimal('9999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-9999999999999999999999', 22, 0) AND
	r.ColumnNullable = Decimal('9999999999999999999999', 22, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 0)
SET     $Column = Decimal('-9999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(22, 0)
SET     $ColumnNullable = Decimal('9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('-9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = Decimal('9999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(22, 0)
SET     $p2 = Decimal('-9999999999999999999999', 22, 9)
DECLARE $p3 Decimal(22, 0)
SET     $p3 = Decimal('9999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('-9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = Decimal('9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('-9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = Decimal('9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 0)
SET     $value = Decimal('-9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = Decimal('9999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 22, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 0)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(22, 0)
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
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(22, 0)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(22, 0)
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
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
	r.`Column` = Decimal('-9999999999999999999999', 22, 0) AND
	r.ColumnNullable = Decimal('9999999999999999999999', 22, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 0)
SET     $Column = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $ColumnNullable Decimal(22, 0)
SET     $ColumnNullable = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $p2 Decimal(22, 0)
SET     $p2 = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $p3 Decimal(22, 0)
SET     $p3 = { "low128": "1864712049423024127", "high128": "542" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 0)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 0)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 1)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(22, 1)
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
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(22, 1)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(22, 1)
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
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('-999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = Decimal('999999999999999999999.9', 22, 9)

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
	r.`Column` = Decimal('-999999999999999999999.9', 22, 1) AND
	r.ColumnNullable = Decimal('999999999999999999999.9', 22, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 1)
SET     $Column = Decimal('-999999999999999999999.9', 22, 9)
DECLARE $ColumnNullable Decimal(22, 1)
SET     $ColumnNullable = Decimal('999999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('-999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = Decimal('999999999999999999999.9', 22, 9)

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
DECLARE $p2 Decimal(22, 1)
SET     $p2 = Decimal('-999999999999999999999.9', 22, 9)
DECLARE $p3 Decimal(22, 1)
SET     $p3 = Decimal('999999999999999999999.9', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('-999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = Decimal('999999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('-999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = Decimal('999999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(22, 1)
SET     $value = Decimal('-999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = Decimal('999999999999999999999.9', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 22, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 1)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(22, 1)
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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(22, 1)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(22, 1)
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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
	r.`Column` = Decimal('-999999999999999999999.9', 22, 1) AND
	r.ColumnNullable = Decimal('999999999999999999999.9', 22, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 1)
SET     $Column = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $ColumnNullable Decimal(22, 1)
SET     $ColumnNullable = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $p2 Decimal(22, 1)
SET     $p2 = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $p3 Decimal(22, 1)
SET     $p3 = { "low128": "1864712049423024127", "high128": "542" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
	r.`Column` = Decimal('1.2', 22, 1) AND r.ColumnNullable = Decimal('-2.1', 22, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 1)
SET     $Column = { "low128": "12" }
DECLARE $ColumnNullable Decimal(22, 1)
SET     $ColumnNullable = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $p2 Decimal(22, 1)
SET     $p2 = { "low128": "12" }
DECLARE $p3 Decimal(22, 1)
SET     $p3 = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(22, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(22, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 9)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(22, 9)
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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(22, 9)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(22, 9)
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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('-9999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('9999999999999.999999999', 22, 9)

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
	r.`Column` = Decimal('-9999999999999.999999999', 22, 9) AND
	r.ColumnNullable = Decimal('9999999999999.999999999', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 9)
SET     $Column = Decimal('-9999999999999.999999999', 22, 9)
DECLARE $ColumnNullable Decimal(22, 9)
SET     $ColumnNullable = Decimal('9999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('-9999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('9999999999999.999999999', 22, 9)

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
DECLARE $p2 Decimal(22, 9)
SET     $p2 = Decimal('-9999999999999.999999999', 22, 9)
DECLARE $p3 Decimal(22, 9)
SET     $p3 = Decimal('9999999999999.999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('-9999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('9999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('-9999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('9999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(22, 9)
SET     $value = Decimal('-9999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = Decimal('9999999999999.999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 9)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(22, 9)
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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(22, 9)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(22, 9)
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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
	r.`Column` = Decimal('-9999999999999.999999999', 22, 9) AND
	r.ColumnNullable = Decimal('9999999999999.999999999', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 9)
SET     $Column = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $ColumnNullable Decimal(22, 9)
SET     $ColumnNullable = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $p2 Decimal(22, 9)
SET     $p2 = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $p3 Decimal(22, 9)
SET     $p3 = { "low128": "1864712049423024127", "high128": "542" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
	r.`Column` = Decimal('1.2', 22, 9) AND r.ColumnNullable = Decimal('-2.1', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 9)
SET     $Column = { "low128": "1200000000" }
DECLARE $ColumnNullable Decimal(22, 9)
SET     $ColumnNullable = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $p2 Decimal(22, 9)
SET     $p2 = { "low128": "1200000000" }
DECLARE $p3 Decimal(22, 9)
SET     $p3 = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(22, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(22, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 21) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 21)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(22, 21)
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
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(22, 21)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(22, 21)
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
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('-9.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = Decimal('9.999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-9.999999999999999999999', 22, 21) AND
	r.ColumnNullable = Decimal('9.999999999999999999999', 22, 21)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 21)
SET     $Column = Decimal('-9.999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(22, 21)
SET     $ColumnNullable = Decimal('9.999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('-9.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = Decimal('9.999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(22, 21)
SET     $p2 = Decimal('-9.999999999999999999999', 22, 9)
DECLARE $p3 Decimal(22, 21)
SET     $p3 = Decimal('9.999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('-9.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = Decimal('9.999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('-9.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = Decimal('9.999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 21)
SET     $value = Decimal('-9.999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = Decimal('9.999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 22, 21) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 21)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(22, 21)
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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(22, 21)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(22, 21)
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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
	r.`Column` = Decimal('-9.999999999999999999999', 22, 21) AND
	r.ColumnNullable = Decimal('9.999999999999999999999', 22, 21)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 21)
SET     $Column = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $ColumnNullable Decimal(22, 21)
SET     $ColumnNullable = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $p2 Decimal(22, 21)
SET     $p2 = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $p3 Decimal(22, 21)
SET     $p3 = { "low128": "1864712049423024127", "high128": "542" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "961635208879144960", "high128": "65" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "2928824402888884224", "high128": "18446744073709551502" }

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
	r.`Column` = Decimal('1.2', 22, 21) AND r.ColumnNullable = Decimal('-2.1', 22, 21)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 21)
SET     $Column = { "low128": "961635208879144960", "high128": "65" }
DECLARE $ColumnNullable Decimal(22, 21)
SET     $ColumnNullable = { "low128": "2928824402888884224", "high128": "18446744073709551502" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "961635208879144960", "high128": "65" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "2928824402888884224", "high128": "18446744073709551502" }

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
DECLARE $p2 Decimal(22, 21)
SET     $p2 = { "low128": "961635208879144960", "high128": "65" }
DECLARE $p3 Decimal(22, 21)
SET     $p3 = { "low128": "2928824402888884224", "high128": "18446744073709551502" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "961635208879144960", "high128": "65" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "2928824402888884224", "high128": "18446744073709551502" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "961635208879144960", "high128": "65" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "2928824402888884224", "high128": "18446744073709551502" }

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
DECLARE $value Decimal(22, 21)
SET     $value = { "low128": "961635208879144960", "high128": "65" }
DECLARE $nullableValue Decimal(22, 21)
SET     $nullableValue = { "low128": "2928824402888884224", "high128": "18446744073709551502" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 22) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 22)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(22, 22)
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
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(22, 22)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(22, 22)
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
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('-0.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = Decimal('0.9999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-0.9999999999999999999999', 22, 22) AND
	r.ColumnNullable = Decimal('0.9999999999999999999999', 22, 22)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 22)
SET     $Column = Decimal('-0.9999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(22, 22)
SET     $ColumnNullable = Decimal('0.9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('-0.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = Decimal('0.9999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(22, 22)
SET     $p2 = Decimal('-0.9999999999999999999999', 22, 9)
DECLARE $p3 Decimal(22, 22)
SET     $p3 = Decimal('0.9999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('-0.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = Decimal('0.9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('-0.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = Decimal('0.9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(22, 22)
SET     $value = Decimal('-0.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = Decimal('0.9999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 22, 22) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 22)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(22, 22)
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
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(22, 22)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(22, 22)
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
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
	r.`Column` = Decimal('-0.9999999999999999999999', 22, 22) AND
	r.ColumnNullable = Decimal('0.9999999999999999999999', 22, 22)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(22, 22)
SET     $Column = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $ColumnNullable Decimal(22, 22)
SET     $ColumnNullable = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $p2 Decimal(22, 22)
SET     $p2 = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $p3 Decimal(22, 22)
SET     $p3 = { "low128": "1864712049423024127", "high128": "542" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

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
DECLARE $value Decimal(22, 22)
SET     $value = { "low128": "16582032024286527489", "high128": "18446744073709551073" }
DECLARE $nullableValue Decimal(22, 22)
SET     $nullableValue = { "low128": "1864712049423024127", "high128": "542" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 23, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(23, 0)
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
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(23, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(23, 0)
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
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('-99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = Decimal('99999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-99999999999999999999999', 23, 0) AND
	r.ColumnNullable = Decimal('99999999999999999999999', 23, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 0)
SET     $Column = Decimal('-99999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(23, 0)
SET     $ColumnNullable = Decimal('99999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('-99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = Decimal('99999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(23, 0)
SET     $p2 = Decimal('-99999999999999999999999', 22, 9)
DECLARE $p3 Decimal(23, 0)
SET     $p3 = Decimal('99999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('-99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = Decimal('99999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('-99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = Decimal('99999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 0)
SET     $value = Decimal('-99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = Decimal('99999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 23, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 0)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(23, 0)
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
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(23, 0)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(23, 0)
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
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
	r.`Column` = Decimal('-99999999999999999999999', 23, 0) AND
	r.ColumnNullable = Decimal('99999999999999999999999', 23, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 0)
SET     $Column = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $ColumnNullable Decimal(23, 0)
SET     $ColumnNullable = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $p2 Decimal(23, 0)
SET     $p2 = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $p3 Decimal(23, 0)
SET     $p3 = { "low128": "200376420520689663", "high128": "5421" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 0)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 0)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 23, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 1)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(23, 1)
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
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(23, 1)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(23, 1)
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
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('-9999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = Decimal('9999999999999999999999.9', 22, 9)

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
	r.`Column` = Decimal('-9999999999999999999999.9', 23, 1) AND
	r.ColumnNullable = Decimal('9999999999999999999999.9', 23, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 1)
SET     $Column = Decimal('-9999999999999999999999.9', 22, 9)
DECLARE $ColumnNullable Decimal(23, 1)
SET     $ColumnNullable = Decimal('9999999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('-9999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = Decimal('9999999999999999999999.9', 22, 9)

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
DECLARE $p2 Decimal(23, 1)
SET     $p2 = Decimal('-9999999999999999999999.9', 22, 9)
DECLARE $p3 Decimal(23, 1)
SET     $p3 = Decimal('9999999999999999999999.9', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('-9999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = Decimal('9999999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('-9999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = Decimal('9999999999999999999999.9', 22, 9)

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
DECLARE $value Decimal(23, 1)
SET     $value = Decimal('-9999999999999999999999.9', 22, 9)
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = Decimal('9999999999999999999999.9', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 23, 1) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 1)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(23, 1)
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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(23, 1)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(23, 1)
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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
	r.`Column` = Decimal('-9999999999999999999999.9', 23, 1) AND
	r.ColumnNullable = Decimal('9999999999999999999999.9', 23, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 1)
SET     $Column = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $ColumnNullable Decimal(23, 1)
SET     $ColumnNullable = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $p2 Decimal(23, 1)
SET     $p2 = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $p3 Decimal(23, 1)
SET     $p3 = { "low128": "200376420520689663", "high128": "5421" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
	r.`Column` = Decimal('1.2', 23, 1) AND r.ColumnNullable = Decimal('-2.1', 23, 1)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 1)
SET     $Column = { "low128": "12" }
DECLARE $ColumnNullable Decimal(23, 1)
SET     $ColumnNullable = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $p2 Decimal(23, 1)
SET     $p2 = { "low128": "12" }
DECLARE $p3 Decimal(23, 1)
SET     $p3 = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(23, 1)
SET     $value = { "low128": "12" }
DECLARE $nullableValue Decimal(23, 1)
SET     $nullableValue = { "low128": "18446744073709551595", "high128": "18446744073709551615" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 23, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 9)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(23, 9)
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
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(23, 9)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(23, 9)
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
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('-99999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = Decimal('99999999999999.999999999', 22, 9)

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
	r.`Column` = Decimal('-99999999999999.999999999', 23, 9) AND
	r.ColumnNullable = Decimal('99999999999999.999999999', 23, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 9)
SET     $Column = Decimal('-99999999999999.999999999', 22, 9)
DECLARE $ColumnNullable Decimal(23, 9)
SET     $ColumnNullable = Decimal('99999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('-99999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = Decimal('99999999999999.999999999', 22, 9)

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
DECLARE $p2 Decimal(23, 9)
SET     $p2 = Decimal('-99999999999999.999999999', 22, 9)
DECLARE $p3 Decimal(23, 9)
SET     $p3 = Decimal('99999999999999.999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('-99999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = Decimal('99999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('-99999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = Decimal('99999999999999.999999999', 22, 9)

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
DECLARE $value Decimal(23, 9)
SET     $value = Decimal('-99999999999999.999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = Decimal('99999999999999.999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 23, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 9)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(23, 9)
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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(23, 9)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(23, 9)
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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
	r.`Column` = Decimal('-99999999999999.999999999', 23, 9) AND
	r.ColumnNullable = Decimal('99999999999999.999999999', 23, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 9)
SET     $Column = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $ColumnNullable Decimal(23, 9)
SET     $ColumnNullable = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $p2 Decimal(23, 9)
SET     $p2 = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $p3 Decimal(23, 9)
SET     $p3 = { "low128": "200376420520689663", "high128": "5421" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
	r.`Column` = Decimal('1.2', 23, 9) AND r.ColumnNullable = Decimal('-2.1', 23, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 9)
SET     $Column = { "low128": "1200000000" }
DECLARE $ColumnNullable Decimal(23, 9)
SET     $ColumnNullable = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $p2 Decimal(23, 9)
SET     $p2 = { "low128": "1200000000" }
DECLARE $p3 Decimal(23, 9)
SET     $p3 = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

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
DECLARE $value Decimal(23, 9)
SET     $value = { "low128": "1200000000" }
DECLARE $nullableValue Decimal(23, 9)
SET     $nullableValue = { "low128": "18446744071609551616", "high128": "18446744073709551615" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 23, 22) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 22)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(23, 22)
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
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(23, 22)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(23, 22)
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
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('-9.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = Decimal('9.9999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-9.9999999999999999999999', 23, 22) AND
	r.ColumnNullable = Decimal('9.9999999999999999999999', 23, 22)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 22)
SET     $Column = Decimal('-9.9999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(23, 22)
SET     $ColumnNullable = Decimal('9.9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('-9.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = Decimal('9.9999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(23, 22)
SET     $p2 = Decimal('-9.9999999999999999999999', 22, 9)
DECLARE $p3 Decimal(23, 22)
SET     $p3 = Decimal('9.9999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('-9.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = Decimal('9.9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('-9.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = Decimal('9.9999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 22)
SET     $value = Decimal('-9.9999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = Decimal('9.9999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 23, 22) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 22)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(23, 22)
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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(23, 22)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(23, 22)
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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
	r.`Column` = Decimal('-9.9999999999999999999999', 23, 22) AND
	r.ColumnNullable = Decimal('9.9999999999999999999999', 23, 22)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 22)
SET     $Column = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $ColumnNullable Decimal(23, 22)
SET     $ColumnNullable = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $p2 Decimal(23, 22)
SET     $p2 = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $p3 Decimal(23, 22)
SET     $p3 = { "low128": "200376420520689663", "high128": "5421" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "9616352088791449600", "high128": "650" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "10841499955179290624", "high128": "18446744073709550477" }

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
	r.`Column` = Decimal('1.2', 23, 22) AND r.ColumnNullable = Decimal('-2.1', 23, 22)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 22)
SET     $Column = { "low128": "9616352088791449600", "high128": "650" }
DECLARE $ColumnNullable Decimal(23, 22)
SET     $ColumnNullable = { "low128": "10841499955179290624", "high128": "18446744073709550477" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "9616352088791449600", "high128": "650" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "10841499955179290624", "high128": "18446744073709550477" }

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
DECLARE $p2 Decimal(23, 22)
SET     $p2 = { "low128": "9616352088791449600", "high128": "650" }
DECLARE $p3 Decimal(23, 22)
SET     $p3 = { "low128": "10841499955179290624", "high128": "18446744073709550477" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "9616352088791449600", "high128": "650" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "10841499955179290624", "high128": "18446744073709550477" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "9616352088791449600", "high128": "650" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "10841499955179290624", "high128": "18446744073709550477" }

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
DECLARE $value Decimal(23, 22)
SET     $value = { "low128": "9616352088791449600", "high128": "650" }
DECLARE $nullableValue Decimal(23, 22)
SET     $nullableValue = { "low128": "10841499955179290624", "high128": "18446744073709550477" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 23, 23) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 23)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(23, 23)
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
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(23, 23)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(23, 23)
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
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('-0.99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = Decimal('0.99999999999999999999999', 22, 9)

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
	r.`Column` = Decimal('-0.99999999999999999999999', 23, 23) AND
	r.ColumnNullable = Decimal('0.99999999999999999999999', 23, 23)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 23)
SET     $Column = Decimal('-0.99999999999999999999999', 22, 9)
DECLARE $ColumnNullable Decimal(23, 23)
SET     $ColumnNullable = Decimal('0.99999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('-0.99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = Decimal('0.99999999999999999999999', 22, 9)

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
DECLARE $p2 Decimal(23, 23)
SET     $p2 = Decimal('-0.99999999999999999999999', 22, 9)
DECLARE $p3 Decimal(23, 23)
SET     $p3 = Decimal('0.99999999999999999999999', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('-0.99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = Decimal('0.99999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('-0.99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = Decimal('0.99999999999999999999999', 22, 9)

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
DECLARE $value Decimal(23, 23)
SET     $value = Decimal('-0.99999999999999999999999', 22, 9)
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = Decimal('0.99999999999999999999999', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "0" }

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
	r.`Column` = Decimal('0', 23, 23) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 23)
SET     $Column = { "low128": "0" }
DECLARE $ColumnNullable Decimal(23, 23)
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
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "0" }

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
DECLARE $p2 Decimal(23, 23)
SET     $p2 = { "low128": "0" }
DECLARE $p3 Decimal(23, 23)
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
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "0" }

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
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "0" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
	r.`Column` = Decimal('-0.99999999999999999999999', 23, 23) AND
	r.ColumnNullable = Decimal('0.99999999999999999999999', 23, 23)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(23, 23)
SET     $Column = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $ColumnNullable Decimal(23, 23)
SET     $ColumnNullable = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $p2 Decimal(23, 23)
SET     $p2 = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $p3 Decimal(23, 23)
SET     $p3 = { "low128": "200376420520689663", "high128": "5421" }

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

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
DECLARE $value Decimal(23, 23)
SET     $value = { "low128": "18246367653188861953", "high128": "18446744073709546194" }
DECLARE $nullableValue Decimal(23, 23)
SET     $nullableValue = { "low128": "200376420520689663", "high128": "5421" }

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('255', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('255', 22, 9) AND r.ColumnNullable = Decimal('0', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(3, 0)
SET     $Column = Decimal('255', 22, 9)
DECLARE $ColumnNullable Decimal(1, 0)
SET     $ColumnNullable = Decimal('0', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('255', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(3, 0)
SET     $p2 = Decimal('255', 22, 9)
DECLARE $p3 Decimal(1, 0)
SET     $p3 = Decimal('0', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('255', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('255', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('255', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('255', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable = Decimal('255', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(3, 0)
SET     $ColumnNullable = Decimal('255', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('255', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(3, 0)
SET     $p3 = Decimal('255', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('255', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('255', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('255', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('65535', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('65535', 22, 9) AND r.ColumnNullable = Decimal('0', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(5, 0)
SET     $Column = Decimal('65535', 22, 9)
DECLARE $ColumnNullable Decimal(1, 0)
SET     $ColumnNullable = Decimal('0', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('65535', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(5, 0)
SET     $p2 = Decimal('65535', 22, 9)
DECLARE $p3 Decimal(1, 0)
SET     $p3 = Decimal('0', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('65535', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('65535', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('65535', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('65535', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable = Decimal('65535', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(5, 0)
SET     $ColumnNullable = Decimal('65535', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('65535', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(5, 0)
SET     $p3 = Decimal('65535', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('65535', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('65535', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('65535', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('4294967295', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('4294967295', 22, 9) AND r.ColumnNullable = Decimal('0', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(10, 0)
SET     $Column = Decimal('4294967295', 22, 9)
DECLARE $ColumnNullable Decimal(1, 0)
SET     $ColumnNullable = Decimal('0', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('4294967295', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(10, 0)
SET     $p2 = Decimal('4294967295', 22, 9)
DECLARE $p3 Decimal(1, 0)
SET     $p3 = Decimal('0', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('4294967295', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('4294967295', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('4294967295', 22, 9)
DECLARE $nullableValue Decimal(1, 0)
SET     $nullableValue = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('4294967295', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable = Decimal('4294967295', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(10, 0)
SET     $ColumnNullable = Decimal('4294967295', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('4294967295', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(10, 0)
SET     $p3 = Decimal('4294967295', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('4294967295', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('4294967295', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('4294967295', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 20, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(20, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(20, 0)
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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(20, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(20, 0)
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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('18446744073709551615', 22, 9)

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
	r.`Column` = Decimal('0', 20, 0) AND r.ColumnNullable = Decimal('18446744073709551615', 20, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(20, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(20, 0)
SET     $ColumnNullable = Decimal('18446744073709551615', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('18446744073709551615', 22, 9)

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
DECLARE $p2 Decimal(20, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(20, 0)
SET     $p3 = Decimal('18446744073709551615', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('18446744073709551615', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('18446744073709551615', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('0', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('18446744073709551615', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('18446744073709551615', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('18446744073709551615', 20, 0) AND
	r.ColumnNullable = Decimal('0', 20, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(20, 0)
SET     $Column = Decimal('18446744073709551615', 22, 9)
DECLARE $ColumnNullable Decimal(20, 0)
SET     $ColumnNullable = Decimal('0', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('18446744073709551615', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(20, 0)
SET     $p2 = Decimal('18446744073709551615', 22, 9)
DECLARE $p3 Decimal(20, 0)
SET     $p3 = Decimal('0', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('18446744073709551615', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('18446744073709551615', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('0', 22, 9)

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
DECLARE $value Decimal(20, 0)
SET     $value = Decimal('18446744073709551615', 22, 9)
DECLARE $nullableValue Decimal(20, 0)
SET     $nullableValue = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('127', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('-128', 22, 9)

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
	r.`Column` = Decimal('127', 22, 9) AND r.ColumnNullable = Decimal('-128', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(3, 0)
SET     $Column = Decimal('127', 22, 9)
DECLARE $ColumnNullable Decimal(3, 0)
SET     $ColumnNullable = Decimal('-128', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('127', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('-128', 22, 9)

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
DECLARE $p2 Decimal(3, 0)
SET     $p2 = Decimal('127', 22, 9)
DECLARE $p3 Decimal(3, 0)
SET     $p3 = Decimal('-128', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('127', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('-128', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('127', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('-128', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('127', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('-128', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('-128', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('127', 22, 9)

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
	r.`Column` = Decimal('-128', 22, 9) AND r.ColumnNullable = Decimal('127', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(3, 0)
SET     $Column = Decimal('-128', 22, 9)
DECLARE $ColumnNullable Decimal(3, 0)
SET     $ColumnNullable = Decimal('127', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('-128', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('127', 22, 9)

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
DECLARE $p2 Decimal(3, 0)
SET     $p2 = Decimal('-128', 22, 9)
DECLARE $p3 Decimal(3, 0)
SET     $p3 = Decimal('127', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('-128', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('127', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('-128', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('127', 22, 9)

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
DECLARE $value Decimal(3, 0)
SET     $value = Decimal('-128', 22, 9)
DECLARE $nullableValue Decimal(3, 0)
SET     $nullableValue = Decimal('127', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('32767', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('-32768', 22, 9)

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
	r.`Column` = Decimal('32767', 22, 9) AND r.ColumnNullable = Decimal('-32768', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(5, 0)
SET     $Column = Decimal('32767', 22, 9)
DECLARE $ColumnNullable Decimal(5, 0)
SET     $ColumnNullable = Decimal('-32768', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('32767', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('-32768', 22, 9)

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
DECLARE $p2 Decimal(5, 0)
SET     $p2 = Decimal('32767', 22, 9)
DECLARE $p3 Decimal(5, 0)
SET     $p3 = Decimal('-32768', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('32767', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('-32768', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('32767', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('-32768', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('32767', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('-32768', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('-32768', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('32767', 22, 9)

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
	r.`Column` = Decimal('-32768', 22, 9) AND r.ColumnNullable = Decimal('32767', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(5, 0)
SET     $Column = Decimal('-32768', 22, 9)
DECLARE $ColumnNullable Decimal(5, 0)
SET     $ColumnNullable = Decimal('32767', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('-32768', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('32767', 22, 9)

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
DECLARE $p2 Decimal(5, 0)
SET     $p2 = Decimal('-32768', 22, 9)
DECLARE $p3 Decimal(5, 0)
SET     $p3 = Decimal('32767', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('-32768', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('32767', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('-32768', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('32767', 22, 9)

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
DECLARE $value Decimal(5, 0)
SET     $value = Decimal('-32768', 22, 9)
DECLARE $nullableValue Decimal(5, 0)
SET     $nullableValue = Decimal('32767', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 22, 9) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(1, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(1, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal
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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(1, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('2147483647', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('-2147483648', 22, 9)

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
	r.`Column` = Decimal('2147483647', 22, 9) AND r.ColumnNullable = Decimal('-2147483648', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(10, 0)
SET     $Column = Decimal('2147483647', 22, 9)
DECLARE $ColumnNullable Decimal(10, 0)
SET     $ColumnNullable = Decimal('-2147483648', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('2147483647', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('-2147483648', 22, 9)

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
DECLARE $p2 Decimal(10, 0)
SET     $p2 = Decimal('2147483647', 22, 9)
DECLARE $p3 Decimal(10, 0)
SET     $p3 = Decimal('-2147483648', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('2147483647', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('-2147483648', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('2147483647', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('-2147483648', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('2147483647', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('-2147483648', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('-2147483648', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('2147483647', 22, 9)

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
	r.`Column` = Decimal('-2147483648', 22, 9) AND r.ColumnNullable = Decimal('2147483647', 22, 9)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(10, 0)
SET     $Column = Decimal('-2147483648', 22, 9)
DECLARE $ColumnNullable Decimal(10, 0)
SET     $ColumnNullable = Decimal('2147483647', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('-2147483648', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('2147483647', 22, 9)

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
DECLARE $p2 Decimal(10, 0)
SET     $p2 = Decimal('-2147483648', 22, 9)
DECLARE $p3 Decimal(10, 0)
SET     $p3 = Decimal('2147483647', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('-2147483648', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('2147483647', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('-2147483648', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('2147483647', 22, 9)

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
DECLARE $value Decimal(10, 0)
SET     $value = Decimal('-2147483648', 22, 9)
DECLARE $nullableValue Decimal(10, 0)
SET     $nullableValue = Decimal('2147483647', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 19, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(19, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(19, 0)
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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(19, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(19, 0)
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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('-9223372036854775808', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('9223372036854775807', 22, 9)

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
	r.`Column` = Decimal('-9223372036854775808', 19, 0) AND
	r.ColumnNullable = Decimal('9223372036854775807', 19, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(19, 0)
SET     $Column = Decimal('-9223372036854775808', 22, 9)
DECLARE $ColumnNullable Decimal(19, 0)
SET     $ColumnNullable = Decimal('9223372036854775807', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('-9223372036854775808', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('9223372036854775807', 22, 9)

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
DECLARE $p2 Decimal(19, 0)
SET     $p2 = Decimal('-9223372036854775808', 22, 9)
DECLARE $p3 Decimal(19, 0)
SET     $p3 = Decimal('9223372036854775807', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('-9223372036854775808', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('9223372036854775807', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('-9223372036854775808', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('9223372036854775807', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('-9223372036854775808', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('9223372036854775807', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('9223372036854775807', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('-9223372036854775808', 22, 9)

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
	r.`Column` = Decimal('9223372036854775807', 19, 0) AND
	r.ColumnNullable = Decimal('-9223372036854775808', 19, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(19, 0)
SET     $Column = Decimal('9223372036854775807', 22, 9)
DECLARE $ColumnNullable Decimal(19, 0)
SET     $ColumnNullable = Decimal('-9223372036854775808', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('9223372036854775807', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('-9223372036854775808', 22, 9)

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
DECLARE $p2 Decimal(19, 0)
SET     $p2 = Decimal('9223372036854775807', 22, 9)
DECLARE $p3 Decimal(19, 0)
SET     $p3 = Decimal('-9223372036854775808', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('9223372036854775807', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('-9223372036854775808', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('9223372036854775807', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('-9223372036854775808', 22, 9)

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
DECLARE $value Decimal(19, 0)
SET     $value = Decimal('9223372036854775807', 22, 9)
DECLARE $nullableValue Decimal(19, 0)
SET     $nullableValue = Decimal('-9223372036854775808', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 8, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(8, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(8, 0)
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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(8, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(8, 0)
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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('-16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('16777220', 22, 9)

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
	r.`Column` = Decimal('-16777220', 8, 0) AND r.ColumnNullable = Decimal('16777220', 8, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(8, 0)
SET     $Column = Decimal('-16777220', 22, 9)
DECLARE $ColumnNullable Decimal(8, 0)
SET     $ColumnNullable = Decimal('16777220', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('-16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('16777220', 22, 9)

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
DECLARE $p2 Decimal(8, 0)
SET     $p2 = Decimal('-16777220', 22, 9)
DECLARE $p3 Decimal(8, 0)
SET     $p3 = Decimal('16777220', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('-16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('16777220', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('-16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('16777220', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('-16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('16777220', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('-16777220', 22, 9)

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
	r.`Column` = Decimal('16777220', 8, 0) AND r.ColumnNullable = Decimal('-16777220', 8, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(8, 0)
SET     $Column = Decimal('16777220', 22, 9)
DECLARE $ColumnNullable Decimal(8, 0)
SET     $ColumnNullable = Decimal('-16777220', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('-16777220', 22, 9)

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
DECLARE $p2 Decimal(8, 0)
SET     $p2 = Decimal('16777220', 22, 9)
DECLARE $p3 Decimal(8, 0)
SET     $p3 = Decimal('-16777220', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('-16777220', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('-16777220', 22, 9)

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
DECLARE $value Decimal(8, 0)
SET     $value = Decimal('16777220', 22, 9)
DECLARE $nullableValue Decimal(8, 0)
SET     $nullableValue = Decimal('-16777220', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('0', 22, 9)

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
	r.`Column` = Decimal('0', 16, 0) AND r.ColumnNullable IS NULL

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(16, 0)
SET     $Column = Decimal('0', 22, 9)
DECLARE $ColumnNullable Decimal(16, 0)
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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $p2 Decimal(16, 0)
SET     $p2 = Decimal('0', 22, 9)
DECLARE $p3 Decimal(16, 0)
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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('0', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('0', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable IS NULL

-- YDB Ydb
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('-9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('9007199254740990', 22, 9)

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
	r.`Column` = Decimal('-9007199254740990', 16, 0) AND
	r.ColumnNullable = Decimal('9007199254740990', 16, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(16, 0)
SET     $Column = Decimal('-9007199254740990', 22, 9)
DECLARE $ColumnNullable Decimal(16, 0)
SET     $ColumnNullable = Decimal('9007199254740990', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('-9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('9007199254740990', 22, 9)

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
DECLARE $p2 Decimal(16, 0)
SET     $p2 = Decimal('-9007199254740990', 22, 9)
DECLARE $p3 Decimal(16, 0)
SET     $p3 = Decimal('9007199254740990', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('-9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('9007199254740990', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('-9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('9007199254740990', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('-9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('9007199254740990', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

-- YDB Ydb
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('-9007199254740990', 22, 9)

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
	r.`Column` = Decimal('9007199254740990', 16, 0) AND
	r.ColumnNullable = Decimal('-9007199254740990', 16, 0)

-- YDB Ydb

DELETE FROM
	`TypeTable\`2`

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Column Decimal(16, 0)
SET     $Column = Decimal('9007199254740990', 22, 9)
DECLARE $ColumnNullable Decimal(16, 0)
SET     $ColumnNullable = Decimal('-9007199254740990', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('-9007199254740990', 22, 9)

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
DECLARE $p2 Decimal(16, 0)
SET     $p2 = Decimal('9007199254740990', 22, 9)
DECLARE $p3 Decimal(16, 0)
SET     $p3 = Decimal('-9007199254740990', 22, 9)

INSERT INTO `TypeTable\`2`
(
	Id,
	`Column`,
	ColumnNullable
)
VALUES
($p1,$p2,$p3)

-- YDB Ydb
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('-9007199254740990', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('-9007199254740990', 22, 9)

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
DECLARE $value Decimal(16, 0)
SET     $value = Decimal('9007199254740990', 22, 9)
DECLARE $nullableValue Decimal(16, 0)
SET     $nullableValue = Decimal('-9007199254740990', 22, 9)

SELECT
	r.Id as Id,
	r.`Column` as Column_1,
	r.ColumnNullable as ColumnNullable
FROM
	`TypeTable\`2` r
WHERE
	r.`Column` = $value AND r.ColumnNullable = $nullableValue

