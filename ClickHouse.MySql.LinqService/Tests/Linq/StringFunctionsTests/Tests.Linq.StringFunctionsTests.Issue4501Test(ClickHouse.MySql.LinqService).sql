BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_1.Id,
	arrayStringConcat(groupArray(g_1.Value1), ', ')
FROM
	SampleClass g_1
GROUP BY
	g_1.Id

