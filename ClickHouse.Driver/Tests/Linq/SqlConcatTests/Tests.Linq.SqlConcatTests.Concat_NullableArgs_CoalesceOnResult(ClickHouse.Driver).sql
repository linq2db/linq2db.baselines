-- ClickHouse.Driver ClickHouse

SELECT
	concat(e.Str1, e.Str2)
FROM
	SqlConcatTestEntity e
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
	SqlConcatTestEntity t1

