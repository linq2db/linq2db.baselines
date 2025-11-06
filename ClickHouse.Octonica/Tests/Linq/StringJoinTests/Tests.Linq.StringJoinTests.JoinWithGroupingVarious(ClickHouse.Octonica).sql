-- ClickHouse.Octonica ClickHouse

SELECT
	g_1.Id,
	arrayStringConcat(groupUniqArray(toString(Coalesce(g_1.NullableValue, ''))), ', '),
	Coalesce(arrayStringConcat(groupUniqArrayIf(toString(g_1.NullableValue), g_1.NullableValue IS NOT NULL), ', '), ''),
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arrayDistinct(arrayReverse(arraySort((t) -> (if(isNull(t.1), 1, 0), t.1), groupUniqArrayIf((g_1.NullableValue, toString(g_1.NullableValue)), g_1.NullableValue IS NOT NULL))))), ', '),
	arrayStringConcat(groupUniqArray(toString(g_1.NotNullableValue)), ', '),
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arrayDistinct(arrayReverse(arraySort((t) -> (if(isNull(t.1), 1, 0), t.1), groupUniqArray((g_1.NotNullableValue, toString(g_1.NotNullableValue))))))), ', ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id
ORDER BY
	g_1.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

