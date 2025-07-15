BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK BooleanTable(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

