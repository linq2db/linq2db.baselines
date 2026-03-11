-- Access.Ace.OleDb AccessOleDb

SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[ChildID] MOD 2 = 0, [g_1].[ParentID], NULL) as [Key_1]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

