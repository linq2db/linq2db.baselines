-- YDB Ydb
DECLARE $separator Text(2) -- String
SET     $separator = ': 'u

SELECT
	g_1.Id as Id,
	Coalesce(Unicode::JoinFromList(AGGREGATE_LIST(Coalesce(g_1.NullableValue, ''u)), $separator), ''u) as Nullable_1,
	Coalesce(Unicode::JoinFromList(AGGREGATE_LIST(g_1.NotNullableValue), $separator), ''u) as NotNullable
FROM
	SampleClass g_1
GROUP BY
	g_1.Id
ORDER BY
	Id

-- YDB Ydb
SELECT
	t1.PK as PK,
	t1.Id as Id,
	t1.NullableValue as NullableValue,
	t1.NotNullableValue as NotNullableValue,
	t1.VarcharValue as VarcharValue,
	t1.NVarcharValue as NVarcharValue
FROM
	SampleClass t1

