BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ByteTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ByteTable
(
	ColumnNullable Nullable(UInt8),
	Column         UInt8,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ByteTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toUInt8(1),toInt32(1)),
(toUInt8(2),toUInt8(255),toInt32(2))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	ByteTable r
WHERE
	r.Column = toUInt8(255) AND r.ColumnNullable = toUInt8(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
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
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	NULL,
	toUInt8(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ByteTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	toUInt8(2),
	toUInt8(255),
	toInt32(2)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
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
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toUInt8(1),toInt32(1)),
(toUInt8(2),toUInt8(255),toInt32(2))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
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
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toUInt8(1),toInt32(1)),
(toUInt8(2),toUInt8(255),toInt32(2))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ByteTable

