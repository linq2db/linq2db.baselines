BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2816Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue2816Table
(
	Id   Int32,
	Text Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	0,
	''
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	1,
	'a'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	2,
	' m '
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	3,
	' '
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	4,
	'  '
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue2816Table
(
	Id,
	Text
)
VALUES
(
	5,
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	empty(replaceRegexpAll(coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Text
FROM
	Issue2816Table t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2816Table

