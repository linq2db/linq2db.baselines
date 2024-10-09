BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(sumOrNull(g_1.Value1), 0),
	Coalesce(sumOrNull(g_1.Value1), 0)
FROM
	Parent g_1
GROUP BY
	g_1.ParentID

