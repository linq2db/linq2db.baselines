BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1]
			LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		ON [p].[ParentID] = [a_Parent].[ParentID] AND [a_Parent].[ParentID] IS NOT NULL AND ([p].[Value1] = [a_Parent].[Value1] AND [p].[Value1] IS NOT NULL AND [a_Parent].[Value1] IS NOT NULL OR [p].[Value1] IS NULL AND [a_Parent].[Value1] IS NULL) AND [p].[ParentID] = [c_1].[ParentID]

