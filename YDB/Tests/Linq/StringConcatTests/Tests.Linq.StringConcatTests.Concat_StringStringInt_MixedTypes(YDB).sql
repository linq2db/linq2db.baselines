-- YDB Ydb

SELECT
	e.StrReq as StrReq
FROM
	ConcatTestEntity e
WHERE
	(Coalesce(e.StrReq, ''u) || ' 1'u) = 'Programmer 1'u

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Str1 as Str1,
	t1.Str2 as Str2,
	t1.StrReq as StrReq,
	t1.Num as Num
FROM
	ConcatTestEntity t1

