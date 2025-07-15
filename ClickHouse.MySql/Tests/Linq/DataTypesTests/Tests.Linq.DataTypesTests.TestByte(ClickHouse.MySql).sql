BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r.Column = toUInt8(255) AND r.ColumnNullable = toUInt8(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r.Column = toUInt8(255) AND r.ColumnNullable = toUInt8(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ByteTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toUInt8(1),
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ByteTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	2,
	toUInt8(255),
	toUInt8(2)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ByteTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toUInt8(1),NULL),
(2,toUInt8(255),toUInt8(2))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ByteTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toUInt8(1),NULL),
(2,toUInt8(255),toUInt8(2))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

