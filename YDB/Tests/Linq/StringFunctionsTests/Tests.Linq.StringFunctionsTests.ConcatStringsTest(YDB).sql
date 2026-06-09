-- YDB Ydb

SELECT
	Coalesce(t.Value2, ''u) as ConcatStrings
FROM
	SampleClass t
ORDER BY
	t.Id

-- YDB Ydb

SELECT
	Coalesce(t.Value3, ''u) as ConcatStrings
FROM
	SampleClass t
ORDER BY
	t.Id

-- YDB Ydb

SELECT
	Coalesce(ListConcat(ListNotNull(AsList(t.Value3, t.Value1, t.Value2)), ' -> 'u), ''u) as ConcatStrings
FROM
	SampleClass t
ORDER BY
	t.Id

-- YDB Ydb

SELECT
	Coalesce(ListConcat(ListNotNull(AsList(t.Value3, t.Value3)), ' -> 'u), ''u) as ConcatStrings
FROM
	SampleClass t
ORDER BY
	t.Id

