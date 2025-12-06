-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r.Column = toUInt8(255) AND r.ColumnNullable = toUInt8(2)

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r.Column = toUInt8(255) AND r.ColumnNullable = toUInt8(2)

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

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

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

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

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	ByteTable
DELETE WHERE 1

INSERT ASYNC BULK ByteTable(Id, Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

