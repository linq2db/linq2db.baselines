-- Access.Ace.OleDb AccessOleDb

SELECT
	[g_2].[ID1],
	[g_2].[ID2] + 1,
	[g_2].[ID2],
	[g_2].[ID4]
FROM
	(
		SELECT
			MAX([g_1].[ChildID]) as [ID1],
			COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) as [ID2],
			COUNT(IIF([g_1].[ChildID] > 10, 1, NULL)) as [ID4]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

