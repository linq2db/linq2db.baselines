-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	empty(replaceRegexpAll(coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Text
FROM
	Issue2816Table t1

