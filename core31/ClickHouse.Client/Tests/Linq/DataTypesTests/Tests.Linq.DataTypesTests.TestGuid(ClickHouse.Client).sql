BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS GuidTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS GuidTable
(
	ColumnNullable Nullable(UUID),
	Column         UUID,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GuidTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toInt32(1)),
(toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	GuidTable r
WHERE
	r.Column = toUUID('a948600d-de21-4f74-8ac2-9516b287076e') AND
	r.ColumnNullable = toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	GuidTable r
WHERE
	r.Column = toUUID('a948600d-de21-4f74-8ac2-9516b287076e') AND
	r.ColumnNullable = toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GuidTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	NULL,
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GuidTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),
	toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GuidTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toInt32(1)),
(toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	GuidTable
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK GuidTable(ColumnNullable, Column, Id)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS GuidTable

