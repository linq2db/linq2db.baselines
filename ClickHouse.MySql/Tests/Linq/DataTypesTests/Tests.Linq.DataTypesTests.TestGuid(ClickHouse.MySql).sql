﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS GuidTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS GuidTable
(
	Id             Int32,
	Column         UUID,
	ColumnNullable Nullable(UUID)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO GuidTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL),
(2,toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	GuidTable r
WHERE
	r.Column = toUUID('a948600d-de21-4f74-8ac2-9516b287076e') AND
	r.ColumnNullable = toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Column,
	r.ColumnNullable
FROM
	GuidTable r
WHERE
	r.Column = toUUID('a948600d-de21-4f74-8ac2-9516b287076e') AND
	r.ColumnNullable = toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO GuidTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	1,
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO GuidTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(
	2,
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),
	toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO GuidTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL),
(2,toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO GuidTable
(
	Id,
	Column,
	ColumnNullable
)
VALUES
(1,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL),
(2,toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS GuidTable

