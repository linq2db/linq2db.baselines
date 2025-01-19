BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	'val=1',
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	2,
	'value=2',
	'value=33'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK StringEnumTable(Id, Column, ColumnNullable)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

