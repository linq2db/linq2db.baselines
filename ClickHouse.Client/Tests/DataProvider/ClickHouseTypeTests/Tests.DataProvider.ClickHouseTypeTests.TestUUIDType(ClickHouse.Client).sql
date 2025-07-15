BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toUUID('00000000-0000-0000-0000-000000000000'),
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toUUID('00000000-0000-0000-0000-000000000000'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toUUID('00000000-0000-0000-0000-000000000000'),
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toUUID('00000000-0000-0000-0000-000000000000'),NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('00000000-0000-0000-0000-000000000000') AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	r.ColumnNullable = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'00000000-0000-0000-0000-000000000000',
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('00000000-0000-0000-0000-000000000000',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'00000000-0000-0000-0000-000000000000',
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('00000000-0000-0000-0000-000000000000',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'00000000-0000-0000-0000-000000000000',
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('00000000-0000-0000-0000-000000000000',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'00000000-0000-0000-0000-000000000000',
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('00000000-0000-0000-0000-000000000000',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = '00000000-0000-0000-0000-000000000000' AND
	r.ColumnNullable IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
(
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	'a948600d-de21-4f74-8ac2-9516b287076e'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO `TypeTable``2`
(
	Column,
	ColumnNullable
)
VALUES
('bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	`TypeTable``2`
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK `TypeTable``2`(Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Column,
	r.ColumnNullable
FROM
	`TypeTable``2` r
WHERE
	r.Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AND
	r.ColumnNullable = 'a948600d-de21-4f74-8ac2-9516b287076e'

