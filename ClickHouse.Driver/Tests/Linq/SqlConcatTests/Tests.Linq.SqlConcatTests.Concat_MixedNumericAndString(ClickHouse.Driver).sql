-- ClickHouse.Driver ClickHouse

SELECT
	e.Id
FROM
	SqlConcatTestEntity e
WHERE
	concat(toString(e.Num), '-', e.StrReq) = '100-Programmer'

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Str1,
	t1.Str2,
	t1.StrReq,
	t1.Num
FROM
	SqlConcatTestEntity t1

