BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[c_1].[ParentID], 
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 0
ORDER BY
	[c_1].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[c_1].[ParentID], 
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > -100

BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	1
FROM
	[Parent] [p]

