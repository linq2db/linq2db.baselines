-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id,
	p.Text
FROM
	WhiteSpaceTextRow p
WHERE
	NOT empty(replaceRegexpAll(Coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | | |　', ''))

