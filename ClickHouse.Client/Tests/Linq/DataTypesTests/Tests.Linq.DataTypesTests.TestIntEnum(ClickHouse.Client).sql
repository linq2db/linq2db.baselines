BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS IntEnumTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS IntEnumTable
(
	Id             Int32,
	Column         Int32,
	ColumnNullable Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO IntEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(toInt32(1),toInt32(1),NULL),
(toInt32(2),toInt32(2),toInt32(3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r.Column = toInt32(2) AND r.ColumnNullable = toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r.Column = toInt32(2) AND r.ColumnNullable = toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	IntEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO IntEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	toInt32(1),
	toInt32(1),
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO IntEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	toInt32(2),
	toInt32(2),
	toInt32(3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	IntEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO IntEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(toInt32(1),toInt32(1),NULL),
(toInt32(2),toInt32(2),toInt32(3))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	IntEnumTable
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK IntEnumTable(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS IntEnumTable

