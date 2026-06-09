-- YDB Ydb

SELECT
	e.Id as Id
FROM
	ConcatTestEntity e
WHERE
	e.StrReq IS NOT NULL

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Str1 as Str1,
	t1.Str2 as Str2,
	t1.StrReq as StrReq,
	t1.Num as Num
FROM
	ConcatTestEntity t1

