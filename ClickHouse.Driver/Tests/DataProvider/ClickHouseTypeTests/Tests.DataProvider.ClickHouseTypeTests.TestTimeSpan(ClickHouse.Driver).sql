BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toInt64(0),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toInt64(9223372036854775807),toInt64(-9223372036854775808))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

