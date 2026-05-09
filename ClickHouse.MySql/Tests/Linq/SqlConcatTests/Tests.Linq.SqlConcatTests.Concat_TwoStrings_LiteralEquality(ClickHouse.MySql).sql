-- ClickHouse.MySql ClickHouse

SELECT
	e.StrReq
FROM
	SqlConcatTestEntity e
WHERE
	concat(e.StrReq, ' I') = 'Programmer I'

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	SqlConcatTestEntity t1

