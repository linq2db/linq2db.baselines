-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toIPv6('0.0.0.0'),
	NULL
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('0.0.0.0'),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('0.0.0.0'),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('0.0.0.0'),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toIPv6('127.0.0.2'),
	toIPv6('2001:44c8:129:2632:33:0:252:2')
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('127.0.0.2'),toIPv6('2001:44c8:129:2632:33:0:252:2'))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('127.0.0.2'),toIPv6('2001:44c8:129:2632:33:0:252:2'))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('127.0.0.2'),toIPv6('2001:44c8:129:2632:33:0:252:2'))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6 AND
	r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6,
	NULL
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6 AND
	r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6,NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6 AND
	r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6,NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6 AND
	r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6,NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0000:0000:0000:0000:0000:ffff:7f00:0002'::IPv6 AND
	r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '127.0.0.2'::IPv6 AND r.ColumnNullable = '2001:44c8:129:2632:33:0:252:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'127.0.0.2'::IPv6,
	'2001:44c8:129:2632:33:0:252:2'::IPv6
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '127.0.0.2'::IPv6 AND r.ColumnNullable = '2001:44c8:129:2632:33:0:252:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('127.0.0.2'::IPv6,'2001:44c8:129:2632:33:0:252:2'::IPv6)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '127.0.0.2'::IPv6 AND r.ColumnNullable = '2001:44c8:129:2632:33:0:252:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('127.0.0.2'::IPv6,'2001:44c8:129:2632:33:0:252:2'::IPv6)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '127.0.0.2'::IPv6 AND r.ColumnNullable = '2001:44c8:129:2632:33:0:252:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('127.0.0.2'::IPv6,'2001:44c8:129:2632:33:0:252:2'::IPv6)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '127.0.0.2'::IPv6 AND r.ColumnNullable = '2001:44c8:129:2632:33:0:252:2'::IPv6

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0:0:0:0:0:ffff:7f00:0002'::IPv6 AND r.ColumnNullable = '::ffff:7f00:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'0:0:0:0:0:ffff:7f00:0002'::IPv6,
	'::ffff:7f00:2'::IPv6
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0:0:0:0:0:ffff:7f00:0002'::IPv6 AND r.ColumnNullable = '::ffff:7f00:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('0:0:0:0:0:ffff:7f00:0002'::IPv6,'::ffff:7f00:2'::IPv6)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0:0:0:0:0:ffff:7f00:0002'::IPv6 AND r.ColumnNullable = '::ffff:7f00:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('0:0:0:0:0:ffff:7f00:0002'::IPv6,'::ffff:7f00:2'::IPv6)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0:0:0:0:0:ffff:7f00:0002'::IPv6 AND r.ColumnNullable = '::ffff:7f00:2'::IPv6

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('0:0:0:0:0:ffff:7f00:0002'::IPv6,'::ffff:7f00:2'::IPv6)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '0:0:0:0:0:ffff:7f00:0002'::IPv6 AND r.ColumnNullable = '::ffff:7f00:2'::IPv6

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toIPv6('0.0.0.0'),
	NULL
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('0.0.0.0'),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('0.0.0.0'),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('0.0.0.0'),NULL)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('0.0.0.0') AND r.ColumnNullable IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toIPv6('127.0.0.2'),
	toIPv6('2001:44c8:129:2632:33:0:252:2')
)

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('127.0.0.2'),toIPv6('2001:44c8:129:2632:33:0:252:2'))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('127.0.0.2'),toIPv6('2001:44c8:129:2632:33:0:252:2'))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toIPv6('127.0.0.2'),toIPv6('2001:44c8:129:2632:33:0:252:2'))

-- ClickHouse.MySql ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toIPv6('127.0.0.2') AND r.ColumnNullable = toIPv6('2001:44c8:129:2632:33:0:252:2')

