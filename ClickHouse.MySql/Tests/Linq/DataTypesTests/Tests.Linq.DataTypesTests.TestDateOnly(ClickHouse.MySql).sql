BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable = toDate32('2020-01-01')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r.Column = toDate32('2020-02-29') AND r.ColumnNullable = toDate32('2020-01-01')

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	DateOnlyTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DateOnlyTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toDate32('1980-01-01'),
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DateOnlyTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	2,
	toDate32('2020-02-29'),
	toDate32('2020-01-01')
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	DateOnlyTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DateOnlyTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toDate32('1980-01-01'),NULL),
(2,toDate32('2020-02-29'),toDate32('2020-01-01'))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	DateOnlyTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO DateOnlyTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toDate32('1980-01-01'),NULL),
(2,toDate32('2020-02-29'),toDate32('2020-01-01'))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

