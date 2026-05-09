-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	concat(t.Str1, t.Str2, t.StrReq)
FROM
	SqlConcatTestEntity t
ORDER BY
	t.Id

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	SqlConcatTestEntity t1

