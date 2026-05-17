-- ClickHouse.Driver ClickHouse

SELECT
	e.Id
FROM
	ConcatTestEntity e
WHERE
	(concat(e.StrReq, e.StrReq)) IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	ConcatTestEntity t1

