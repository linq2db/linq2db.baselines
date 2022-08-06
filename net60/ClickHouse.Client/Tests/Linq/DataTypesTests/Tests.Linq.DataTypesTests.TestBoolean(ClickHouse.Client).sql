BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BooleanTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS BooleanTable
(
	ColumnNullable Nullable(Bool),
	Column         Bool,
	Id             Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO BooleanTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,true,toInt32(1)),
(true,false,toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.ColumnNullable,
	r.Column,
	r.Id
FROM
	BooleanTable r
WHERE
	r.Column = false AND r.ColumnNullable = true

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO BooleanTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	NULL,
	true,
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO BooleanTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(
	true,
	false,
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO BooleanTable
(
	ColumnNullable,
	Column,
	Id
)
VALUES
(NULL,true,toInt32(1)),
(true,false,toInt32(2))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	BooleanTable
DELETE WHERE 1

BeforeExecute
INSERT ASYNC BULK BooleanTable(ColumnNullable, Column, Id)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ColumnNullable,
	t1.Column,
	t1.Id
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BooleanTable

