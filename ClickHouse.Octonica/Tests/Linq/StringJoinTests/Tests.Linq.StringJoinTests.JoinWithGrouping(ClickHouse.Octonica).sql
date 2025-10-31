BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_1.Id,
	arrayStringConcat(groupArray(toString(Coalesce(g_1.NullableValue, ''))), ', '),
	arrayStringConcat(groupArray(toString(g_1.NotNullableValue)), ', ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id
ORDER BY
	g_1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

