BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate32('2020-02-29'),
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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate32('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	toDate32('1900-01-01'),
	toDate32('2299-12-31')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
(toDate32('1900-01-01'),toDate32('2299-12-31'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate32('2020-02-29'),
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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate32('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	toDate32('1900-01-01'),
	toDate32('2299-12-31')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
(toDate32('1900-01-01'),toDate32('2299-12-31'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate32('2020-02-29'),
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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate32('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	toDate32('1900-01-01'),
	toDate32('2299-12-31')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
(toDate32('1900-01-01'),toDate32('2299-12-31'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate32('2020-02-29'),
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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate32('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	toDate32('1900-01-01'),
	toDate32('2299-12-31')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
(toDate32('1900-01-01'),toDate32('2299-12-31'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate32('2020-02-29'),
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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate32('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	toDate32('1900-01-01'),
	toDate32('2299-12-31')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
(toDate32('1900-01-01'),toDate32('2299-12-31'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	toDate32('2020-02-29'),
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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
(toDate32('2020-02-29'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

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
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	toDate32('1900-01-01'),
	toDate32('2299-12-31')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
(toDate32('1900-01-01'),toDate32('2299-12-31'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

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
	r.Column = toDate32('1900-01-01') AND r.ColumnNullable = toDate32('2299-12-31')

