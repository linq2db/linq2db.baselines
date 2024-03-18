BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	SUM([g_1].[Value1]),
	(
		SELECT
			SUM([p].[Value1])
		FROM
			[Parent] [p]
		WHERE
			[g_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [g_1]
GROUP BY
	[g_1].[ParentID]

