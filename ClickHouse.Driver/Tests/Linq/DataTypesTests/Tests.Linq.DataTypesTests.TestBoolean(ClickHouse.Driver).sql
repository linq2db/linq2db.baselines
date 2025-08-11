BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO BooleanTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	true,
	NULL
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO BooleanTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	2,
	false,
	true
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO BooleanTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,true,NULL),
(2,false,true)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK BooleanTable(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

