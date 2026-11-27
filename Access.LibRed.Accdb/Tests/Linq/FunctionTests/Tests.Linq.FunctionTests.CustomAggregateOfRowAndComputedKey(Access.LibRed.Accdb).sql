-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_2].[Key_1],
	SUM([g_2].[ChildID] + [g_2].[Key_1]),
	SUM([g_2].[ChildID] + Abs([g_2].[Key_1]))
FROM
	(
		SELECT
			[g_1].[ChildID] MOD 3 as [Key_1],
			[g_1].[ChildID]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_2].[ParentID],
	[g_2].[Odd],
	SUM([g_2].[ChildID] + [g_2].[ParentID])
FROM
	(
		SELECT
			[g_1].[ParentID],
			[g_1].[ChildID] MOD 2 as [Odd],
			[g_1].[ChildID]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[ParentID],
	[g_2].[Odd]

