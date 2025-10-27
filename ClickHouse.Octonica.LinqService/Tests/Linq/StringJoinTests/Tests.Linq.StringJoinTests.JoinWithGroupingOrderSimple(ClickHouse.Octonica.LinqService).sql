BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	g_1.Id,
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 3), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1, if(isNull(t.2), 0, 1), t.2), groupArrayIf((g_1.NullableValue, g_1.Id, toString(g_1.NullableValue)), g_1.NullableValue IS NOT NULL))), ', '),
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((g_1.NullableValue, toString(Coalesce(g_1.NullableValue, '')))))), ', ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id
ORDER BY
	g_1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

