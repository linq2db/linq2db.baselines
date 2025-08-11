BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r.Column = toUInt8(255) AND r.ColumnNullable = toUInt8(2)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r.Column = toUInt8(255) AND r.ColumnNullable = toUInt8(2)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK ByteTable(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

