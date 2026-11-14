-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[pmp1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
	) [pmp],
	[Child] [pmp1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

