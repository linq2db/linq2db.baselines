-- Sybase.Managed Sybase

SELECT TOP 1
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [arg2] ON [t1].[ParentID] = [arg2].[ParentID]
WHERE
	[arg2].[Value1] = 6

