BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID], 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [t1] ON [p].[ParentID] = [t1].[ParentID]
WHERE
	[p].[ParentID] >= 4

