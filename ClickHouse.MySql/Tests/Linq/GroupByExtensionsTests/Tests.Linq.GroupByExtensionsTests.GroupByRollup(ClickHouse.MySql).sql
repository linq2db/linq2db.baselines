BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_2.Id1,
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			g_1.Id1 as Id1,
			g_1.Id2 as Id2,
			g_1.Value as Value_1
		FROM
			GroupSampleClass g_1
	) g_2
GROUP BY ROLLUP (
	g_2.Id1,
	g_2.Id2
)

