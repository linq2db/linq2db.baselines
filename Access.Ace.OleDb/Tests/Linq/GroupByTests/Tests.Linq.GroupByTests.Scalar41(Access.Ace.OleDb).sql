-- Access.Ace.OleDb AccessOleDb

SELECT
	[g_2].[Min_2]
FROM
	(
		SELECT
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [Min_1],
			MIN(IIF([g_1].[ParentID] > 2, [g_1].[ChildID], NULL)) as [Min_2]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	[g_2].[Min_1] IS NOT NULL

