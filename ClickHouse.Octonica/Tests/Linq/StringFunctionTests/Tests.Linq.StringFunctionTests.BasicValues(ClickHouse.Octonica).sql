-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id,
	p.Text
FROM
	WhiteSpaceTextRow p
WHERE
	empty(replaceRegexpAll(Coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | | |　', ''))

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Text
FROM
	WhiteSpaceTextRow t1

