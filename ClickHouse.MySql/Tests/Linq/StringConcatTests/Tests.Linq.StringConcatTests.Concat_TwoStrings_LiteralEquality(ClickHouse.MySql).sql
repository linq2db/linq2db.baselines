-- ClickHouse.MySql ClickHouse

SELECT
	e.StrReq
FROM
	ConcatTestEntity e
WHERE
	concat(Coalesce(e.StrReq, ''), ' I') = 'Programmer I'

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

