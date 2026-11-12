-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 1
	COUNT(*),
	1 + MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

