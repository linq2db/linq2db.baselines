﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	toDateTime('2020-02-29 17:54:55'),
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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	toDateTime('1970-01-01 00:00:00'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('2020-02-29 17:09:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

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
	toDateTime('2020-02-29 17:09:55'),
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
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

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
(toDateTime('2020-02-29 17:09:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	toDateTime('1970-01-01 00:00:00'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('2020-02-29 17:14:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

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
	toDateTime('2020-02-29 17:14:55'),
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
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

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
(toDateTime('2020-02-29 17:14:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('1970-01-01 00:45:00'),toDateTime('2106-02-07 05:43:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:00') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

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
	toDateTime('1970-01-01 00:45:00'),
	toDateTime('2106-02-07 05:43:15')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:00') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

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
(toDateTime('1970-01-01 00:45:00'),toDateTime('2106-02-07 05:43:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:00') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

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
	r.Column = toDateTime('1970-01-01 00:45:00') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

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
	r.Column = toDateTime('1970-01-01 00:45:00') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

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
	r.Column = toDateTime('1970-01-01 00:45:00') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	toDateTime('2020-02-29 17:54:55'),
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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	toDateTime('1970-01-01 00:00:00'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	toDateTime('2020-02-29 17:54:55'),
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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

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
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	toDateTime('1970-01-01 00:00:00'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
(toDateTime('1970-01-01 00:00:00'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

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
	r.Column = toDateTime('1970-01-01 00:00:00') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

