BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StringEnumTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS StringEnumTable
(
	ColumnNullable Nullable(String),
	Column         String,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
INSERT INTO StringEnumTable(ColumnNullable, Column, Id) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StringEnumTable

