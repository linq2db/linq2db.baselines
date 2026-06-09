-- YDB Ydb

SELECT
	Coalesce(e.Str1, ''u) || '/'u || Coalesce(e.StrReq, ''u) as c1
FROM
	ConcatTestEntity e
ORDER BY
	e.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Str1 as Str1,
	t1.Str2 as Str2,
	t1.StrReq as StrReq,
	t1.Num as Num
FROM
	ConcatTestEntity t1

