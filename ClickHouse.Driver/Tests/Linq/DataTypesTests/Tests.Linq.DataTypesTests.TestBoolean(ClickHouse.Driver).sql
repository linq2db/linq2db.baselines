-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

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

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

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

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

INSERT ASYNC BULK BooleanTable(Id, Column, ColumnNullable)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

