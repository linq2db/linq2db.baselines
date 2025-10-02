BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(0),
	NULL
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(0),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(-3.40282347E+38),
	toFloat32(3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(3.40282347E+38),
	toFloat32(-3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(1.40129846E-45),
	toFloat32(NaN)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(1.40129846E-45),toFloat32(NaN))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(NaN),
	toFloat32(1.40129846E-45)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(NaN),toFloat32(1.40129846E-45))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(Infinity),
	toFloat32(-Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(Infinity),toFloat32(-Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(-Infinity),
	toFloat32(Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(-Infinity),toFloat32(Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(0),
	NULL
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(0),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(-3.40282347E+38),
	toFloat32(3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(-3.40282347E+38),toFloat32(3.40282347E+38))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-3.40282347E+38) AND r.ColumnNullable = toFloat32(3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(3.40282347E+38),
	toFloat32(-3.40282347E+38)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(3.40282347E+38),toFloat32(-3.40282347E+38))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(3.40282347E+38) AND r.ColumnNullable = toFloat32(-3.40282347E+38)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(1.40129846E-45),
	toFloat32(NaN)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(1.40129846E-45),toFloat32(NaN))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(NaN),
	toFloat32(1.40129846E-45)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(NaN),toFloat32(1.40129846E-45))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat32(1.40129846E-45)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(Infinity),
	toFloat32(-Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(Infinity),toFloat32(-Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(Infinity) AND r.ColumnNullable = toFloat32(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat32(-Infinity),
	toFloat32(Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat32(-Infinity),toFloat32(Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat32(-Infinity) AND r.ColumnNullable = toFloat32(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(0),
	NULL
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(0),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(-1.7976931348623157E+308),
	toFloat64(1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(1.7976931348623157E+308),
	toFloat64(-1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(1.23),
	toFloat64(NaN)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(1.23),toFloat64(NaN))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(NaN),
	toFloat64(-1.23)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(NaN),toFloat64(-1.23))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(Infinity),
	toFloat64(-Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(Infinity),toFloat64(-Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(-Infinity),
	toFloat64(Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(-Infinity),toFloat64(Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(0),
	NULL
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(0),NULL)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(0) AND r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(-1.7976931348623157E+308),
	toFloat64(1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(-1.7976931348623157E+308),toFloat64(1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-1.7976931348623157E+308) AND
	r.ColumnNullable = toFloat64(1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(1.7976931348623157E+308),
	toFloat64(-1.7976931348623157E+308)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(1.7976931348623157E+308),toFloat64(-1.7976931348623157E+308))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.7976931348623157E+308) AND r.ColumnNullable = toFloat64(-1.7976931348623157E+308)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(1.23),
	toFloat64(NaN)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(1.23),toFloat64(NaN))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(NaN),
	toFloat64(-1.23)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(NaN),toFloat64(-1.23))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.ColumnNullable = toFloat64(-1.23)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(Infinity),
	toFloat64(-Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(Infinity),toFloat64(-Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(Infinity) AND r.ColumnNullable = toFloat64(-Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toFloat64(-Infinity),
	toFloat64(Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toFloat64(-Infinity),toFloat64(Infinity))

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toFloat64(-Infinity) AND r.ColumnNullable = toFloat64(Infinity)

