-- ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(groupArray(toString(g_1.Value1)), ' -> ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id,
	g_1.Value1

