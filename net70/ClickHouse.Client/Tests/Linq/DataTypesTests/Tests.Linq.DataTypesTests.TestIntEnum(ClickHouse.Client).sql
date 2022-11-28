BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS IntEnumTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS IntEnumTable
(
	ColumnNullable Nullable(Int32),
	Column         Int32,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO IntEnumTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toInt32(1),toInt32(1)),
(toInt32(3),toInt32(2),toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	IntEnumTable r
WHERE
	r.Column = toInt32(2) AND r.ColumnNullable = toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
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
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	NULL,
	toInt32(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO IntEnumTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	toInt32(3),
	toInt32(2),
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
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
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toInt32(1),toInt32(1)),
(toInt32(3),toInt32(2),toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
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
INSERT ASYNC BULK IntEnumTable(ColumnNullable, Column, Id)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS IntEnumTable

