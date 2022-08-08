BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DateOnlyTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DateOnlyTable
(
	ColumnNullable Nullable(Date32),
	Column         Date32,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DateOnlyTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toDate32('1950-01-01'),toInt32(1)),
(toDate32('2200-01-01'),toDate32('2020-02-29'),toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	DateOnlyTable r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable = toDate32('2200-01-01')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	DateOnlyTable r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable = toDate32('2200-01-01')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	DateOnlyTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DateOnlyTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	NULL,
	toDate32('1950-01-01'),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DateOnlyTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	toDate32('2200-01-01'),
	toDate32('2020-02-29'),
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	DateOnlyTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DateOnlyTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toDate32('1950-01-01'),toInt32(1)),
(toDate32('2200-01-01'),toDate32('2020-02-29'),toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	DateOnlyTable
DELETE WHERE 1

BeforeExecute
INSERT INTO DateOnlyTable(ColumnNullable, Column, Id) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DateOnlyTable

