-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[ParentID]
FROM
	[Parent] [t1]
ORDER BY
	[t1].[ParentID]

