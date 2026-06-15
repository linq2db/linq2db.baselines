-- YDB Ydb

SELECT
	g_1.Id as Key_1,
	Unicode::JoinFromList(AGGREGATE_LIST(DISTINCT Coalesce(g_1.NullableValue, ''u)), ', 'u) as NullableDistinct,
	Coalesce(Unicode::JoinFromList(AGGREGATE_LIST(DISTINCT g_1.NullableValue), ', 'u), ''u) as NullableDistinctNotNullDistinct,
	Unicode::JoinFromList(ListMap(ListReverse(ListSort(ListUniq(AGGREGATE_LIST(DISTINCT (g_1.NullableValue, g_1.NullableValue))), ($t) -> { return (if($t.0 IS NULL, 1, 0), $t.0) })), ($t) -> { return $t.1 }), ', 'u) as NullableDistinctNotNullDistinctOrdered,
	Unicode::JoinFromList(AGGREGATE_LIST(DISTINCT g_1.NotNullableValue), ', 'u) as NotNullableDistinct,
	Unicode::JoinFromList(ListMap(ListReverse(ListSort(ListUniq(AGGREGATE_LIST(DISTINCT (g_1.NotNullableValue, g_1.NotNullableValue))), ($t) -> { return (if($t.0 IS NULL, 1, 0), $t.0) })), ($t) -> { return $t.1 }), ', 'u) as NotNullableDistinctOrdered
FROM
	SampleClass g_1
GROUP BY
	g_1.Id
ORDER BY
	Key_1

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

