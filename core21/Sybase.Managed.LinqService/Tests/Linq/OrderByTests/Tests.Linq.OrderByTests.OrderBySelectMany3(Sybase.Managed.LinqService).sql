BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[p].[ParentID], 
	[c_1].[ChildID]
FROM
	[Parent] [p],
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	([a_Parent].[ParentID] = [p].[ParentID] AND ([a_Parent].[Value1] IS NULL AND [p].[Value1] IS NULL OR [a_Parent].[Value1] = [p].[Value1]))
ORDER BY
	[p].[ParentID],
	[c_1].[ChildID]

