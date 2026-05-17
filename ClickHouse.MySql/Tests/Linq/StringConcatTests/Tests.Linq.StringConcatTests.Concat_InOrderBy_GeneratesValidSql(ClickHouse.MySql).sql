-- ClickHouse.MySql ClickHouse

SELECT
	e.Id
FROM
	ConcatTestEntity e
ORDER BY
	concat(Coalesce(e.StrReq, ''), 'X')

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

