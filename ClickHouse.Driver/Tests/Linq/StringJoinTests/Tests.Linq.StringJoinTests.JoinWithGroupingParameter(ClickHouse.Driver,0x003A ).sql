-- ClickHouse.Driver ClickHouse

SELECT
	g_1.Id,
	Coalesce(arrayStringConcat(groupArray(toString(Coalesce(g_1.NullableValue, ''))), ': '), ''),
	Coalesce(arrayStringConcat(groupArray(toString(g_1.NotNullableValue)), ': '), '')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id
ORDER BY
	g_1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.NullableValue,
	t1.NotNullableValue,
	t1.VarcharValue,
	t1.NVarcharValue
FROM
	SampleClass t1

