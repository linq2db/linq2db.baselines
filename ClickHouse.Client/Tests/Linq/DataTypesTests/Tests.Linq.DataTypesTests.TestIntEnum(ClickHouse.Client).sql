BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r.Column = 2 AND r.ColumnNullable = 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r.Column = 2 AND r.ColumnNullable = 3

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
	1,
	1,
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
	2,
	2,
	3
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
(1,1,NULL),
(2,2,3)

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

