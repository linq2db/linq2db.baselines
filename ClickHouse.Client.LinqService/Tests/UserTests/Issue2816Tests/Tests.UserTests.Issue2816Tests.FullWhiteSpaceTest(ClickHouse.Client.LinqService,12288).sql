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
	1,
	'　'
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
	' 　 '
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
	' 　x '
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	NOT empty(replaceRegexpAll(coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2816Table

