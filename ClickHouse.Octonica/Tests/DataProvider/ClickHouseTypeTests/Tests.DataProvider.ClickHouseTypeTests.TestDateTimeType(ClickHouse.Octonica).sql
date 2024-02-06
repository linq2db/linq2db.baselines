﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toDateTime('1970-01-01 00:00:01'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:09:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:09:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:09:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toDateTime('1970-01-01 00:00:01'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:14:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:14:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:14:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:45:01'),toDateTime('2106-02-07 05:43:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:01') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toDateTime('1970-01-01 00:45:01'),
	toDateTime('2106-02-07 05:43:15')
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:01') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:45:01'),toDateTime('2106-02-07 05:43:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:01') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:01') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:01') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:45:01') AND r.ColumnNullable = toDateTime('2106-02-07 05:43:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toDateTime('1970-01-01 00:00:01'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('2020-02-29 17:54:55'),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('2020-02-29 17:54:55') AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         DateTime,
	ColumnNullable Nullable(DateTime)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toDateTime('1970-01-01 00:00:01'),
	toDateTime('2106-02-07 06:28:15')
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toDateTime('1970-01-01 00:00:01'),toDateTime('2106-02-07 06:28:15'))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT INTO `TypeTable``2`(Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toDateTime('1970-01-01 00:00:01') AND r.ColumnNullable = toDateTime('2106-02-07 06:28:15')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

