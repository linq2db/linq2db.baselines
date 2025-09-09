BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	sumOrNull(g_1.Value1),
	sumOrNull(g_1.Value1)
FROM
	Parent g_1
GROUP BY
	g_1.ParentID

