BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.Id,
	p.Text
FROM
	Issue2816Table p
WHERE
	NOT empty(replaceRegexpAll(coalesce(p.Text, ''), '	|
|||| || | | | | | | | | | | | | | | | |　', ''))

