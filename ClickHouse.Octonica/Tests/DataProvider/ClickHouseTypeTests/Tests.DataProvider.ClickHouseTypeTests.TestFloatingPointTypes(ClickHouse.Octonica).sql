﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	toFloat32(0),
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
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
(toFloat32(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	toFloat32(-3.40282347E+38),
	toFloat32(3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
(toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	toFloat32(3.40282347E+38),
	toFloat32(-3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
(toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(1.40129846E-45),toFloat32(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

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
	toFloat32(1.40129846E-45),
	toFloat32(NaN)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

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
(toFloat32(1.40129846E-45),toFloat32(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

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
	r.Column = toFloat32(1.40129846E-45)

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
	r.Column = toFloat32(1.40129846E-45)

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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(NaN),toFloat32(1.40129846E-45))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	toFloat32(NaN),
	toFloat32(1.40129846E-45)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
(toFloat32(NaN),toFloat32(1.40129846E-45))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(Infinity),toFloat32(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	toFloat32(Infinity),
	toFloat32(-Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
(toFloat32(Infinity),toFloat32(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(-Infinity),toFloat32(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	toFloat32(-Infinity),
	toFloat32(Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
(toFloat32(-Infinity),toFloat32(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	toFloat32(0),
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
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
(toFloat32(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	toFloat32(-3.40282347E+38),
	toFloat32(3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
(toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38) AND
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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	toFloat32(3.40282347E+38),
	toFloat32(-3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
(toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38) AND
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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(1.40129846E-45),toFloat32(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

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
	toFloat32(1.40129846E-45),
	toFloat32(NaN)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

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
(toFloat32(1.40129846E-45),toFloat32(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

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
	r.Column = toFloat32(1.40129846E-45)

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
	r.Column = toFloat32(1.40129846E-45)

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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(NaN),toFloat32(1.40129846E-45))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	toFloat32(NaN),
	toFloat32(1.40129846E-45)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
(toFloat32(NaN),toFloat32(1.40129846E-45))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat32(1.40129846E-45) AND r.ColumnNullable IS NOT NULL

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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(Infinity),toFloat32(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	toFloat32(Infinity),
	toFloat32(-Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
(toFloat32(Infinity),toFloat32(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity) AND
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
	Column         Float32,
	ColumnNullable Nullable(Float32)
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
(toFloat32(-Infinity),toFloat32(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	toFloat32(-Infinity),
	toFloat32(Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
(toFloat32(-Infinity),toFloat32(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	toFloat64(0),
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
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
(toFloat64(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	toFloat64(-1.7976931348623157E+308),
	toFloat64(1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
(toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	toFloat64(1.7976931348623157E+308),
	toFloat64(-1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
(toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(1.23),toFloat64(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

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
	toFloat64(1.23),
	toFloat64(NaN)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

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
(toFloat64(1.23),toFloat64(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

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
	r.Column = toFloat64(1.23)

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
	r.Column = toFloat64(1.23)

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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(NaN),toFloat64(-1.23))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	toFloat64(NaN),
	toFloat64(-1.23)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
(toFloat64(NaN),toFloat64(-1.23))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(Infinity),toFloat64(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	toFloat64(Infinity),
	toFloat64(-Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
(toFloat64(Infinity),toFloat64(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(-Infinity),toFloat64(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
	toFloat64(-Infinity),
	toFloat64(Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
(toFloat64(-Infinity),toFloat64(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	toFloat64(0),
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
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
(toFloat64(0),NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	toFloat64(-1.7976931348623157E+308),
	toFloat64(1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
(toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	toFloat64(1.7976931348623157E+308),
	toFloat64(-1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
(toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(1.23),toFloat64(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

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
	toFloat64(1.23),
	toFloat64(NaN)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

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
(toFloat64(1.23),toFloat64(NaN))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

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
	r.Column = toFloat64(1.23)

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
	r.Column = toFloat64(1.23)

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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(NaN),toFloat64(-1.23))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	toFloat64(NaN),
	toFloat64(-1.23)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
(toFloat64(NaN),toFloat64(-1.23))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	r.ColumnNullable = toFloat64(-1.23) AND r.ColumnNullable IS NOT NULL

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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(Infinity),toFloat64(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	toFloat64(Infinity),
	toFloat64(-Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
(toFloat64(Infinity),toFloat64(-Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity) AND
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
	Column         Float64,
	ColumnNullable Nullable(Float64)
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
(toFloat64(-Infinity),toFloat64(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
	toFloat64(-Infinity),
	toFloat64(Infinity)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
(toFloat64(-Infinity),toFloat64(Infinity))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
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
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity) AND
	r.ColumnNullable IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

