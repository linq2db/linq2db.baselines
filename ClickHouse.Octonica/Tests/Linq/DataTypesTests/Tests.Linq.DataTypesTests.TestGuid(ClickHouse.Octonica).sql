BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
INSERT INTO GuidTable(Id, Column, ColumnNullable) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Column,
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

