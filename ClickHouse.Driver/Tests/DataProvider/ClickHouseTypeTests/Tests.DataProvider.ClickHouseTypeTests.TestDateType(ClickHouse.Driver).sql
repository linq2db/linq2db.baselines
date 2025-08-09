BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate('2020-02-29'),
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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	toDate('1970-01-01'),
	toDate('2149-06-06')
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
(toDate('1970-01-01'),toDate('2149-06-06'))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate('2020-02-29'),
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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	toDate('1970-01-01'),
	toDate('2149-06-06')
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
(toDate('1970-01-01'),toDate('2149-06-06'))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate('2020-02-29'),
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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	toDate('1970-01-01'),
	toDate('2149-06-06')
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
(toDate('1970-01-01'),toDate('2149-06-06'))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate('2020-02-29'),
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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	toDate('1970-01-01'),
	toDate('2149-06-06')
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
(toDate('1970-01-01'),toDate('2149-06-06'))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate('2020-02-29'),
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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	toDate('1970-01-01'),
	toDate('2149-06-06')
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
(toDate('1970-01-01'),toDate('2149-06-06'))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

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
	r.Column = toDate('1970-01-01') AND r.ColumnNullable = toDate('2149-06-06')

