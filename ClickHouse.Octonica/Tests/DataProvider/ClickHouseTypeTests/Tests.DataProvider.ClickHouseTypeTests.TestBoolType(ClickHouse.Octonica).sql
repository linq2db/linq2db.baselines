BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Bool,
	ColumnNullable Nullable(Bool)
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
(false,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable IS NULL

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
	false,
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
	r.Column = false AND r.ColumnNullable IS NULL

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
(false,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable IS NULL

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
	r.Column = false AND r.ColumnNullable IS NULL

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
	r.Column = false AND r.ColumnNullable IS NULL

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
	Column         Bool,
	ColumnNullable Nullable(Bool)
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
(true,false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	true,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
(true,false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	Column         Bool,
	ColumnNullable Nullable(Bool)
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
(false,true)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	false,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
(false,true)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	Column         Bool,
	ColumnNullable Nullable(Bool)
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
(false,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable IS NULL

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
	false,
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
	r.Column = false AND r.ColumnNullable IS NULL

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
(false,NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable IS NULL

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
	r.Column = false AND r.ColumnNullable IS NULL

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
	r.Column = false AND r.ColumnNullable IS NULL

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
	Column         Bool,
	ColumnNullable Nullable(Bool)
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
(true,false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	true,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
(true,false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	r.Column = true AND r.ColumnNullable = false AND r.ColumnNullable IS NOT NULL

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
	Column         Bool,
	ColumnNullable Nullable(Bool)
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
(false,true)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	false,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
(false,true)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	r.Column = false AND r.ColumnNullable = true AND r.ColumnNullable IS NOT NULL

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
	Column         UInt8,
	ColumnNullable Nullable(UInt8)
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
(toUInt8(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(0) AND r.ColumnNullable IS NULL

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
	toUInt8(0),
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
	r.Column = toUInt8(0) AND r.ColumnNullable IS NULL

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
(toUInt8(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(0) AND r.ColumnNullable IS NULL

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
	r.Column = toUInt8(0) AND r.ColumnNullable IS NULL

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
	r.Column = toUInt8(0) AND r.ColumnNullable IS NULL

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
	Column         UInt8,
	ColumnNullable Nullable(UInt8)
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
(toUInt8(1),toUInt8(0))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(1) AND r.ColumnNullable = toUInt8(0) AND
	r.ColumnNullable IS NOT NULL

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
	toUInt8(1),
	toUInt8(0)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(1) AND r.ColumnNullable = toUInt8(0) AND
	r.ColumnNullable IS NOT NULL

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
(toUInt8(1),toUInt8(0))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(1) AND r.ColumnNullable = toUInt8(0) AND
	r.ColumnNullable IS NOT NULL

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
	r.Column = toUInt8(1) AND r.ColumnNullable = toUInt8(0) AND
	r.ColumnNullable IS NOT NULL

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
	r.Column = toUInt8(1) AND r.ColumnNullable = toUInt8(0) AND
	r.ColumnNullable IS NOT NULL

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
	Column         UInt8,
	ColumnNullable Nullable(UInt8)
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
(toUInt8(0),toUInt8(1))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(0) AND r.ColumnNullable = toUInt8(1) AND
	r.ColumnNullable IS NOT NULL

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
	toUInt8(0),
	toUInt8(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(0) AND r.ColumnNullable = toUInt8(1) AND
	r.ColumnNullable IS NOT NULL

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
(toUInt8(0),toUInt8(1))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUInt8(0) AND r.ColumnNullable = toUInt8(1) AND
	r.ColumnNullable IS NOT NULL

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
	r.Column = toUInt8(0) AND r.ColumnNullable = toUInt8(1) AND
	r.ColumnNullable IS NOT NULL

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
	r.Column = toUInt8(0) AND r.ColumnNullable = toUInt8(1) AND
	r.ColumnNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

