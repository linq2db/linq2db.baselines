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

