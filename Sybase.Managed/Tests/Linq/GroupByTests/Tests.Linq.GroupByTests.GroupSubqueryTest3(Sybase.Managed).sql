-- Sybase.Managed Sybase

SELECT
	[pmp].[ParentID]
FROM
	[Child] [pmp]
GROUP BY
	[pmp].[ParentID]

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

