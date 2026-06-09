-- YDB Ydb

SELECT
	t.Str as Str,
	CAST(Unicode::GetLength(t.Str) AS Int32) as Length_1,
	'original-'u || Coalesce(t.Str, ''u) as Condition_1
FROM
	TestLengthModel t

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Str as Str
FROM
	TestLengthModel t1

