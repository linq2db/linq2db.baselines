BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS StringEnumTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS StringEnumTable
(
	ColumnNullable Nullable(String),
	Column         String,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO StringEnumTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,'val=1',toInt32(1)),
('value=33','value=2',toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
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
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	NULL,
	'val=1',
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO StringEnumTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	'value=33',
	'value=2',
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
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
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,'val=1',toInt32(1)),
('value=33','value=2',toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
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
INSERT ASYNC BULK StringEnumTable(ColumnNullable, Column, Id)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS StringEnumTable

