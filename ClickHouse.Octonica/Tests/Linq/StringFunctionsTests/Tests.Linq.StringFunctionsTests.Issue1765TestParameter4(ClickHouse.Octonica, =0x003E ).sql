-- ClickHouse.Octonica ClickHouse

SELECT
	maxOrNull(g_1.Value4),
	arrayStringConcat(groupArray(toString(g_1.Value4)), ' => ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id,
	g_1.Value4

