BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Int64,
	ColumnNullable Nullable(Int64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toInt64(0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toInt64(0),
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toInt64(0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Int64,
	ColumnNullable Nullable(Int64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toInt64(9223372036854775807),toInt64(-9223372036854775808))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808) AND
	r.ColumnNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toInt64(9223372036854775807),
	toInt64(-9223372036854775808)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808) AND
	r.ColumnNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toInt64(9223372036854775807),toInt64(-9223372036854775808))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808) AND
	r.ColumnNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808) AND
	r.ColumnNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808) AND
	r.ColumnNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

