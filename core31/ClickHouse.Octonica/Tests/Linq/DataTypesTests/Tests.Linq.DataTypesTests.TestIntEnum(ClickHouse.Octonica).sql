BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IntEnumTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS IntEnumTable
(
	ColumnNullable Nullable(Int32),
	Column         Int32,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	IntEnumTable r
WHERE
	r.Column = toInt32(2) AND r.ColumnNullable = toInt32(3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	IntEnumTable r
WHERE
	r.Column = toInt32(2) AND r.ColumnNullable = toInt32(3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	IntEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	IntEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	IntEnumTable
DELETE WHERE 1

BeforeExecute
INSERT INTO IntEnumTable(ColumnNullable, Column, Id) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IntEnumTable

