BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	arrayStringConcat(groupArray(g_1.Value1), ' -> ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id,
	g_1.Value1

