-- YDB Ydb

SELECT
	g_1.Id as Key_1,
	Unicode::JoinFromList(ListMap(ListSort(AGGREGATE_LIST((g_1.NullableValue, g_1.Id, g_1.NullableValue)), ($t) -> { return (if($t.0 IS NULL, 0, 1), $t.0, if($t.1 IS NULL, 0, 1), $t.1) }), ($t) -> { return $t.2 }), ', 'u) as NotNullableeOrderedNoNulls,
	Unicode::JoinFromList(ListMap(ListSort(AGGREGATE_LIST((g_1.NullableValue, Coalesce(g_1.NullableValue, ''u))), ($t) -> { return (if($t.0 IS NULL, 0, 1), $t.0) }), ($t) -> { return $t.1 }), ', 'u) as NotNullableeOrderedNulls
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

