-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1],
	(
		SELECT DISTINCT
			[pmp].[ParentID]
		FROM
			[Child] [pmp]
	) [pmp_1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

