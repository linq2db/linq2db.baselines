﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS StringEnumTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS StringEnumTable
(
	Id             Int32,
	Column         String,
	ColumnNullable Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(toInt32(1),'val=1',NULL),
(toInt32(2),'value=2','value=33')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	StringEnumTable r
WHERE
	r.Column = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	toInt32(1),
	'val=1',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	toInt32(2),
	'value=2',
	'value=33'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(toInt32(1),'val=1',NULL),
(toInt32(2),'value=2','value=33')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	StringEnumTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO StringEnumTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(toInt32(1),'val=1',NULL),
(toInt32(2),'value=2','value=33')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS StringEnumTable

