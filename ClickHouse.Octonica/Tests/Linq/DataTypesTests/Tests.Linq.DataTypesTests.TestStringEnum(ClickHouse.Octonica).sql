﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StringEnumTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS StringEnumTable
(
	Id             Int32,
	Column         String,
	ColumnNullable Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
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
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
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
INSERT INTO StringEnumTable(Id, Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS StringEnumTable

