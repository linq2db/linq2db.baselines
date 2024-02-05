BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IntEnumTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS IntEnumTable
(
	Id             Int32,
	Column         Int32,
	ColumnNullable Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r.Column = toInt32(2) AND r.ColumnNullable = toInt32(3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
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
	Id,
	Column,
	ColumnNullable
)
VALUES
(toInt32(1),toInt32(1),NULL),
(toInt32(2),toInt32(2),toInt32(3))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
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
INSERT INTO IntEnumTable(Id, Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IntEnumTable

