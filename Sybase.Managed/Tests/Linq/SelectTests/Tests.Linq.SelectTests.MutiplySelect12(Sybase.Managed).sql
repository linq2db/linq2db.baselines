-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1],
	[Child] [child_1]
WHERE
	[t1].[ChildID] IS NOT NULL

