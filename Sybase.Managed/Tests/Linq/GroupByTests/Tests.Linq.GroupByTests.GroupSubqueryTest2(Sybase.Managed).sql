-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

