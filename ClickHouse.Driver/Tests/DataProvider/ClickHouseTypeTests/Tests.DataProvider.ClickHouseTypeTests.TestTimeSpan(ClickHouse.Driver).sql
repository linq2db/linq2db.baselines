-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

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
	toInt64(0),
	NULL
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(0),NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

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
	toInt64(9223372036854775807),
	toInt64(-9223372036854775808)
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.Driver ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(9223372036854775807),toInt64(-9223372036854775808))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

INSERT ASYNC BULK `TypeTable``2`(Id, Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

