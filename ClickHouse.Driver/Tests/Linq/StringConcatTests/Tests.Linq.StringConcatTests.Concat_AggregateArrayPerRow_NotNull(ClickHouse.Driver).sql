-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	arrayStringConcat([t.Str1, t.Str2, t.StrReq], '')
FROM
	ConcatTestEntity t
ORDER BY
	t.Id

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

