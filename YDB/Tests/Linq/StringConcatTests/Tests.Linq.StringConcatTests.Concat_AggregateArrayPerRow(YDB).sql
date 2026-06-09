-- YDB Ydb

SELECT
	t.Id as Id,
	ListConcat(ListNotNull(AsList(Coalesce(t.Str1, ''u), Coalesce(t.Str2, ''u), Coalesce(t.StrReq, ''u))), ''u) as Aggregated
FROM
	ConcatTestEntity t
ORDER BY
	t.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Str1 as Str1,
	t1.Str2 as Str2,
	t1.StrReq as StrReq,
	t1.Num as Num
FROM
	ConcatTestEntity t1

