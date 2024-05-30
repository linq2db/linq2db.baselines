BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum8('value1' = -111, 'value2' = 123),
	ColumnNullable Nullable(Enum8('value1' = -111, 'value2' = 123))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value2',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum8('value1' = -111, 'value2' = 123),
	ColumnNullable Nullable(Enum8('value1' = -111, 'value2' = 123))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value1',
	'value2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum16('value1' = -1111, 'value2' = 2212),
	ColumnNullable Nullable(Enum16('value1' = -1111, 'value2' = 2212))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value2',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum16('value1' = -1111, 'value2' = 2212),
	ColumnNullable Nullable(Enum16('value1' = -1111, 'value2' = 2212))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value1',
	'value2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum16('value1' = -1234, 'value 2' = 4567),
	ColumnNullable Nullable(Enum16('value1' = -1234, 'value 2' = 4567))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value 2',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum16('value1' = -1234, 'value 2' = 4567),
	ColumnNullable Nullable(Enum16('value1' = -1234, 'value 2' = 4567))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value1',
	'value 2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum16('value1' = -1234, 'value2' = 4567),
	ColumnNullable Nullable(Enum16('value1' = -1234, 'value2' = 4567))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value2',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Enum16('value1' = -1234, 'value2' = 4567),
	ColumnNullable Nullable(Enum16('value1' = -1234, 'value2' = 4567))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value1',
	'value2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Int32,
	ColumnNullable Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(-2234,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = -2234 AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	-2234,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = -2234 AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(-2234,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = -2234 AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(-2234,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = -2234 AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(-2234,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = -2234 AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         Int32,
	ColumnNullable Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(1234,-2234)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 1234 AND r.ColumnNullable = -2234

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	1234,
	-2234
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 1234 AND r.ColumnNullable = -2234

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(1234,-2234)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 1234 AND r.ColumnNullable = -2234

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(1234,-2234)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 1234 AND r.ColumnNullable = -2234

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(1234,-2234)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 1234 AND r.ColumnNullable = -2234

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         String,
	ColumnNullable Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value 2',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value 2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value 2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         String,
	ColumnNullable Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value1',
	'value 2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value 2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         FixedString(6),
	ColumnNullable Nullable(FixedString(6))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value2',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value2',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value2' AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS `TypeTable``2`
(
	Column         FixedString(6),
	ColumnNullable Nullable(FixedString(6))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'value1',
	'value2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('value1','value2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'value1' AND r.ColumnNullable = 'value2'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS `TypeTable``2`

