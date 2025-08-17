BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	empty(replaceRegexpAll(coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Text
FROM
	Issue2816Table t1

