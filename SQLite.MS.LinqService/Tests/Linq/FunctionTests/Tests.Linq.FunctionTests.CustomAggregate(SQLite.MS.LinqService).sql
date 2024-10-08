BeforeExecute
-- SQLite.MS SQLite

SELECT
	Coalesce(SUM([g_1].[Value1]), 0),
	Coalesce(SUM([g_1].[Value1]), 0)
FROM
	[Parent] [g_1]
GROUP BY
	[g_1].[ParentID]

