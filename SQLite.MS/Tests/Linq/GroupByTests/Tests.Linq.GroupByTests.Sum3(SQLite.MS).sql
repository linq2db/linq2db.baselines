BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			SUM([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[g_2].[ParentID] = [a_Children].[ParentID]
	)
FROM
	(
		SELECT
			[a_Parent].[ParentID]
		FROM
			[Child] [g_1]
				LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
	) [g_2]

