-- ClickHouse.MySql ClickHouse

SELECT
	g_1.Id,
	maxOrNull(g_1.Value1),
	arrayStringConcat(arrayMap((t) -> tupleElement(t, 2), arraySort((t) -> (if(isNull(t.1), 0, 1), t.1), groupArray((g_1.Value1, toString(g_1.Value1))))), ' -> ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id,
	g_1.Value1
ORDER BY
	g_1.Id

