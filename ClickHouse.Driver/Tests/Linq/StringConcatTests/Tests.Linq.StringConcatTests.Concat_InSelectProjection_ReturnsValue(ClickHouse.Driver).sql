-- ClickHouse.Driver ClickHouse

SELECT
	concat(Coalesce(e.Str1, ''), '/', Coalesce(e.StrReq, ''))
FROM
	ConcatTestEntity e
ORDER BY
	e.Id

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

