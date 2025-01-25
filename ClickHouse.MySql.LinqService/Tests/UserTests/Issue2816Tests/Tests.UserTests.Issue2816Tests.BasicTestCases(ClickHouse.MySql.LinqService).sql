BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2816Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue2816Table
(
	Id   Int32,
	Text Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	empty(replaceRegexpAll(coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Text
FROM
	Issue2816Table t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2816Table

