-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO BooleanTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,true,NULL),
(2,false,true)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

-- ClickHouse.MySql ClickHouse

INSERT INTO BooleanTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,true,NULL),
(2,false,true)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

