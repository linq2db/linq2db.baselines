-- YDB Ydb

SELECT
	t.Id as Id,
	Coalesce(ListConcat(ListNotNull(AsList(t.Str1, t.Str2, t.StrReq)), ''u), ''u) as NotNull_1
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

