-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(0),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(0),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(0),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(0) AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(9223372036854775807),toInt64(-9223372036854775808))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(9223372036854775807),toInt64(-9223372036854775808))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toInt64(9223372036854775807),toInt64(-9223372036854775808))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toInt64(9223372036854775807) AND r.ColumnNullable = toInt64(-9223372036854775808)

