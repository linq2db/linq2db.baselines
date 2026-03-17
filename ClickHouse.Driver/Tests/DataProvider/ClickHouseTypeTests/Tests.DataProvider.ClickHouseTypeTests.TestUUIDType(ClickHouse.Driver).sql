-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
	toUUID('00000000-0000-0000-0000-000000000000'),
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
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
(1,toUUID('00000000-0000-0000-0000-000000000000'),NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e')
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
(1,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
	toUUID('00000000-0000-0000-0000-000000000000'),
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
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
(1,toUUID('00000000-0000-0000-0000-000000000000'),NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

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
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e')
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
(1,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'))

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

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
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	'00000000-0000-0000-0000-000000000000',
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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
(1,'00000000-0000-0000-0000-000000000000',NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	'00000000-0000-0000-0000-000000000000',
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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
(1,'00000000-0000-0000-0000-000000000000',NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	'00000000-0000-0000-0000-000000000000',
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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
(1,'00000000-0000-0000-0000-000000000000',NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	'00000000-0000-0000-0000-000000000000',
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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
(1,'00000000-0000-0000-0000-000000000000',NULL)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

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
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

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
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

