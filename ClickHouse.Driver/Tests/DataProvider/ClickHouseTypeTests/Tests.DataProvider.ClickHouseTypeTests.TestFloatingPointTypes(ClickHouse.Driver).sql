-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(0),NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(1.40129846E-45),toFloat32(NaN))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(NaN),toFloat32(1.40129846E-45))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(Infinity),toFloat32(-Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(-Infinity),toFloat32(Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(0),NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(1.40129846E-45),toFloat32(NaN))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(NaN),toFloat32(1.40129846E-45))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(Infinity),toFloat32(-Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat32(-Infinity),toFloat32(Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(0),NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(1.23),toFloat64(NaN))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(NaN),toFloat64(-1.23))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(Infinity),toFloat64(-Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(-Infinity),toFloat64(Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(0),NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(1.23),toFloat64(NaN))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(NaN),toFloat64(-1.23))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(Infinity),toFloat64(-Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toFloat64(-Infinity),toFloat64(Infinity))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

