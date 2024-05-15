﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 7),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 7),
	toDateTime64('2299-12-31 23:59:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:09:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.1231234', 7),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 7),
	toDateTime64('2299-12-31 23:59:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:14:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.1231234', 7),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:45:00.0000000', 7),toDateTime64('2299-12-31 23:14:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:45:00.0000000', 7),
	toDateTime64('2299-12-31 23:14:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:45:00.0000000', 7),toDateTime64('2299-12-31 23:14:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('2020-02-29 17:54:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55', 0),
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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	toDateTime64('1900-01-01 00:00:00', 0),
	toDateTime64('2299-12-31 23:59:59', 0)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('2020-02-29 17:09:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55', 0) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55', 0),
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
	r.Column = toDateTime64('2020-02-29 17:09:55', 0) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55', 0) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	toDateTime64('1900-01-01 00:00:00', 0),
	toDateTime64('2299-12-31 23:59:59', 0)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('2020-02-29 17:14:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55', 0) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55', 0),
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
	r.Column = toDateTime64('2020-02-29 17:14:55', 0) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55', 0) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('1900-01-01 00:45:00', 0),toDateTime64('2299-12-31 23:14:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59', 0)

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
	toDateTime64('1900-01-01 00:45:00', 0),
	toDateTime64('2299-12-31 23:14:59', 0)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59', 0)

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
(toDateTime64('1900-01-01 00:45:00', 0),toDateTime64('2299-12-31 23:14:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:45:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:45:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59', 0)

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('2020-02-29 17:54:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55', 0),
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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	toDateTime64('1900-01-01 00:00:00', 0),
	toDateTime64('2299-12-31 23:59:59', 0)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('2020-02-29 17:54:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55', 0),
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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55', 0),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55', 0) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(0),
	ColumnNullable Nullable(DateTime64(0))
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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	toDateTime64('1900-01-01 00:00:00', 0),
	toDateTime64('2299-12-31 23:59:59', 0)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
(toDateTime64('1900-01-01 00:00:00', 0),toDateTime64('2299-12-31 23:59:59', 0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	r.Column = toDateTime64('1900-01-01 00:00:00', 0) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59', 0)

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('2020-02-29 17:54:55.1', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1', 1),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	toDateTime64('1900-01-01 00:00:00.0', 1),
	toDateTime64('2299-12-31 23:59:59.9', 1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('2020-02-29 17:09:55.0', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.0', 1),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.0', 1) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.0', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	toDateTime64('1900-01-01 00:00:00.0', 1),
	toDateTime64('2299-12-31 23:59:59.9', 1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('2020-02-29 17:14:55.0', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.0', 1),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.0', 1) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.0', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0', 1) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('1900-01-01 00:45:00.0', 1),toDateTime64('2299-12-31 23:14:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9', 1)

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
	toDateTime64('1900-01-01 00:45:00.0', 1),
	toDateTime64('2299-12-31 23:14:59.9', 1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9', 1)

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
(toDateTime64('1900-01-01 00:45:00.0', 1),toDateTime64('2299-12-31 23:14:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9', 1)

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('2020-02-29 17:54:55.1', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1', 1),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	toDateTime64('1900-01-01 00:00:00.0', 1),
	toDateTime64('2299-12-31 23:59:59.9', 1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('2020-02-29 17:54:55.1', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1', 1),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1', 1),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1', 1) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(1),
	ColumnNullable Nullable(DateTime64(1))
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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	toDateTime64('1900-01-01 00:00:00.0', 1),
	toDateTime64('2299-12-31 23:59:59.9', 1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
(toDateTime64('1900-01-01 00:00:00.0', 1),toDateTime64('2299-12-31 23:59:59.9', 1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0', 1) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9', 1)

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('2020-02-29 17:54:55.12', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.12', 2),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.12', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	toDateTime64('1900-01-01 00:00:00.00', 2),
	toDateTime64('2299-12-31 23:59:59.99', 2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('2020-02-29 17:09:55.00', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.00', 2),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.00', 2) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.00', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	toDateTime64('1900-01-01 00:00:00.00', 2),
	toDateTime64('2299-12-31 23:59:59.99', 2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('2020-02-29 17:14:55.00', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.00', 2),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.00', 2) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.00', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.00', 2) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('1900-01-01 00:45:00.00', 2),toDateTime64('2299-12-31 23:14:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99', 2)

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
	toDateTime64('1900-01-01 00:45:00.00', 2),
	toDateTime64('2299-12-31 23:14:59.99', 2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99', 2)

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
(toDateTime64('1900-01-01 00:45:00.00', 2),toDateTime64('2299-12-31 23:14:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99', 2)

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('2020-02-29 17:54:55.12', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.12', 2),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.12', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	toDateTime64('1900-01-01 00:00:00.00', 2),
	toDateTime64('2299-12-31 23:59:59.99', 2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('2020-02-29 17:54:55.12', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.12', 2),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.12', 2),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12', 2) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(2),
	ColumnNullable Nullable(DateTime64(2))
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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	toDateTime64('1900-01-01 00:00:00.00', 2),
	toDateTime64('2299-12-31 23:59:59.99', 2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
(toDateTime64('1900-01-01 00:00:00.00', 2),toDateTime64('2299-12-31 23:59:59.99', 2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00', 2) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99', 2)

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('2020-02-29 17:54:55.123', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.123', 3),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.123', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	toDateTime64('1900-01-01 00:00:00.000', 3),
	toDateTime64('2299-12-31 23:59:59.999', 3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('2020-02-29 17:09:55.000', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.000', 3),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.000', 3) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.000', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	toDateTime64('1900-01-01 00:00:00.000', 3),
	toDateTime64('2299-12-31 23:59:59.999', 3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('2020-02-29 17:14:55.000', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.000', 3),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.000', 3) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.000', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.000', 3) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('1900-01-01 00:45:00.000', 3),toDateTime64('2299-12-31 23:14:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999', 3)

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
	toDateTime64('1900-01-01 00:45:00.000', 3),
	toDateTime64('2299-12-31 23:14:59.999', 3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999', 3)

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
(toDateTime64('1900-01-01 00:45:00.000', 3),toDateTime64('2299-12-31 23:14:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999', 3)

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('2020-02-29 17:54:55.123', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.123', 3),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.123', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	toDateTime64('1900-01-01 00:00:00.000', 3),
	toDateTime64('2299-12-31 23:59:59.999', 3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('2020-02-29 17:54:55.123', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.123', 3),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.123', 3),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123', 3) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(3),
	ColumnNullable Nullable(DateTime64(3))
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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	toDateTime64('1900-01-01 00:00:00.000', 3),
	toDateTime64('2299-12-31 23:59:59.999', 3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
(toDateTime64('1900-01-01 00:00:00.000', 3),toDateTime64('2299-12-31 23:59:59.999', 3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000', 3) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999', 3)

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('2020-02-29 17:54:55.1231', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231', 4),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	toDateTime64('1900-01-01 00:00:00.0000', 4),
	toDateTime64('2299-12-31 23:59:59.9999', 4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('2020-02-29 17:09:55.0000', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.0000', 4),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.0000', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	toDateTime64('1900-01-01 00:00:00.0000', 4),
	toDateTime64('2299-12-31 23:59:59.9999', 4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('2020-02-29 17:14:55.0000', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.0000', 4),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.0000', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000', 4) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('1900-01-01 00:45:00.0000', 4),toDateTime64('2299-12-31 23:14:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999', 4)

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
	toDateTime64('1900-01-01 00:45:00.0000', 4),
	toDateTime64('2299-12-31 23:14:59.9999', 4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999', 4)

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
(toDateTime64('1900-01-01 00:45:00.0000', 4),toDateTime64('2299-12-31 23:14:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999', 4)

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('2020-02-29 17:54:55.1231', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231', 4),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	toDateTime64('1900-01-01 00:00:00.0000', 4),
	toDateTime64('2299-12-31 23:59:59.9999', 4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('2020-02-29 17:54:55.1231', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231', 4),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231', 4),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231', 4) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(4),
	ColumnNullable Nullable(DateTime64(4))
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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	toDateTime64('1900-01-01 00:00:00.0000', 4),
	toDateTime64('2299-12-31 23:59:59.9999', 4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
(toDateTime64('1900-01-01 00:00:00.0000', 4),toDateTime64('2299-12-31 23:59:59.9999', 4))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000', 4) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999', 4)

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('2020-02-29 17:54:55.12312', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.12312', 5),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.12312', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	toDateTime64('1900-01-01 00:00:00.00000', 5),
	toDateTime64('2299-12-31 23:59:59.99999', 5)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('2020-02-29 17:09:55.00000', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.00000', 5),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.00000', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	toDateTime64('1900-01-01 00:00:00.00000', 5),
	toDateTime64('2299-12-31 23:59:59.99999', 5)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('2020-02-29 17:14:55.00000', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.00000', 5),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.00000', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.00000', 5) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('1900-01-01 00:45:00.00000', 5),toDateTime64('2299-12-31 23:14:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99999', 5)

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
	toDateTime64('1900-01-01 00:45:00.00000', 5),
	toDateTime64('2299-12-31 23:14:59.99999', 5)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99999', 5)

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
(toDateTime64('1900-01-01 00:45:00.00000', 5),toDateTime64('2299-12-31 23:14:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.99999', 5)

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('2020-02-29 17:54:55.12312', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.12312', 5),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.12312', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	toDateTime64('1900-01-01 00:00:00.00000', 5),
	toDateTime64('2299-12-31 23:59:59.99999', 5)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('2020-02-29 17:54:55.12312', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.12312', 5),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.12312', 5),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.12312', 5) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(5),
	ColumnNullable Nullable(DateTime64(5))
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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	toDateTime64('1900-01-01 00:00:00.00000', 5),
	toDateTime64('2299-12-31 23:59:59.99999', 5)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
(toDateTime64('1900-01-01 00:00:00.00000', 5),toDateTime64('2299-12-31 23:59:59.99999', 5))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.00000', 5) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.99999', 5)

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('2020-02-29 17:54:55.123123', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.123123', 6),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.123123', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	toDateTime64('1900-01-01 00:00:00.000000', 6),
	toDateTime64('2299-12-31 23:59:59.999999', 6)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('2020-02-29 17:09:55.000000', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.000000', 6),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.000000', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	toDateTime64('1900-01-01 00:00:00.000000', 6),
	toDateTime64('2299-12-31 23:59:59.999999', 6)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('2020-02-29 17:14:55.000000', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.000000', 6),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.000000', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.000000', 6) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('1900-01-01 00:45:00.000000', 6),toDateTime64('2299-12-31 23:14:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999999', 6)

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
	toDateTime64('1900-01-01 00:45:00.000000', 6),
	toDateTime64('2299-12-31 23:14:59.999999', 6)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999999', 6)

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
(toDateTime64('1900-01-01 00:45:00.000000', 6),toDateTime64('2299-12-31 23:14:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.999999', 6)

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('2020-02-29 17:54:55.123123', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.123123', 6),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.123123', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	toDateTime64('1900-01-01 00:00:00.000000', 6),
	toDateTime64('2299-12-31 23:59:59.999999', 6)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('2020-02-29 17:54:55.123123', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.123123', 6),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.123123', 6),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.123123', 6) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(6),
	ColumnNullable Nullable(DateTime64(6))
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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	toDateTime64('1900-01-01 00:00:00.000000', 6),
	toDateTime64('2299-12-31 23:59:59.999999', 6)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
(toDateTime64('1900-01-01 00:00:00.000000', 6),toDateTime64('2299-12-31 23:59:59.999999', 6))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.000000', 6) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.999999', 6)

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 7),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 7),
	toDateTime64('2299-12-31 23:59:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:09:55.0000000', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.0000000', 7),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.0000000', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 7),
	toDateTime64('2299-12-31 23:59:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:14:55.0000000', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.0000000', 7),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.0000000', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:45:00.0000000', 7),toDateTime64('2299-12-31 23:14:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:45:00.0000000', 7),
	toDateTime64('2299-12-31 23:14:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:45:00.0000000', 7),toDateTime64('2299-12-31 23:14:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 7)

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 7),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 7),
	toDateTime64('2299-12-31 23:59:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 7),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 7),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(7),
	ColumnNullable Nullable(DateTime64(7))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 7),
	toDateTime64('2299-12-31 23:59:59.9999999', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 7),toDateTime64('2299-12-31 23:59:59.9999999', 7))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 7) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 7)

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 8),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 8),
	toDateTime64('2299-12-31 23:59:59.9999999', 8)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('2020-02-29 17:09:55.0000000', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.0000000', 8),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.0000000', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 8),
	toDateTime64('2299-12-31 23:59:59.9999999', 8)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('2020-02-29 17:14:55.0000000', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.0000000', 8),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.0000000', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 8) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('1900-01-01 00:45:00.0000000', 8),toDateTime64('2299-12-31 23:14:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 8)

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
	toDateTime64('1900-01-01 00:45:00.0000000', 8),
	toDateTime64('2299-12-31 23:14:59.9999999', 8)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 8)

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
(toDateTime64('1900-01-01 00:45:00.0000000', 8),toDateTime64('2299-12-31 23:14:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:14:59.9999999', 8)

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 8),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 8),
	toDateTime64('2299-12-31 23:59:59.9999999', 8)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 8),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 8),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 8) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(8),
	ColumnNullable Nullable(DateTime64(8))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 8),
	toDateTime64('2299-12-31 23:59:59.9999999', 8)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 8),toDateTime64('2299-12-31 23:59:59.9999999', 8))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 8) AND
	r.ColumnNullable = toDateTime64('2299-12-31 23:59:59.9999999', 8)

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 9),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 9),
	toDateTime64('2262-04-11 23:47:16.8547758', 9)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('2020-02-29 17:09:55.0000000', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:09:55.0000000', 9),
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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:09:55.0000000', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:09:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 9),
	toDateTime64('2262-04-11 23:47:16.8547758', 9)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('2020-02-29 17:14:55.0000000', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:14:55.0000000', 9),
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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:14:55.0000000', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:14:55.0000000', 9) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('1900-01-01 00:45:00.0000000', 9),toDateTime64('2262-04-11 23:02:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:02:16.8547758', 9)

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
	toDateTime64('1900-01-01 00:45:00.0000000', 9),
	toDateTime64('2262-04-11 23:02:16.8547758', 9)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:02:16.8547758', 9)

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
(toDateTime64('1900-01-01 00:45:00.0000000', 9),toDateTime64('2262-04-11 23:02:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:02:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:02:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:45:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:02:16.8547758', 9)

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 9),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 9),
	toDateTime64('2262-04-11 23:47:16.8547758', 9)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('2020-02-29 17:54:55.1231234', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	toDateTime64('2020-02-29 17:54:55.1231234', 9),
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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
(toDateTime64('2020-02-29 17:54:55.1231234', 9),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	r.Column = toDateTime64('2020-02-29 17:54:55.1231234', 9) AND
	r.ColumnNullable IS NULL

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
	Column         DateTime64(9),
	ColumnNullable Nullable(DateTime64(9))
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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	toDateTime64('1900-01-01 00:00:00.0000000', 9),
	toDateTime64('2262-04-11 23:47:16.8547758', 9)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
(toDateTime64('1900-01-01 00:00:00.0000000', 9),toDateTime64('2262-04-11 23:47:16.8547758', 9))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

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
	r.Column = toDateTime64('1900-01-01 00:00:00.0000000', 9) AND
	r.ColumnNullable = toDateTime64('2262-04-11 23:47:16.8547758', 9)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

