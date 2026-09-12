-- SqlServer.2025.MS SqlServer.2025
SELECT
	[p_10].[ParentID],
	[p_10].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]
		INNER JOIN [Parent] [p_1] ON [p].[ParentID] = [p_1].[ParentID]
		INNER JOIN [Parent] [p_2] ON [p_1].[ParentID] = [p_2].[ParentID]
		INNER JOIN [Parent] [p_3] ON [p_2].[ParentID] = [p_3].[ParentID]
		INNER JOIN [Parent] [p_4] ON [p_3].[ParentID] = [p_4].[ParentID]
		INNER JOIN [Parent] [p_5] ON [p_4].[ParentID] = [p_5].[ParentID]
		INNER JOIN [Parent] [p_6] ON [p_5].[ParentID] = [p_6].[ParentID]
		INNER JOIN [Parent] [p_7] ON [p_6].[ParentID] = [p_7].[ParentID]
		INNER JOIN [Parent] [p_8] ON [p_7].[ParentID] = [p_8].[ParentID]
		INNER JOIN [Parent] [p_9] ON [p_8].[ParentID] = [p_9].[ParentID]
		INNER JOIN [Parent] [p_10] ON [p_9].[ParentID] = [p_10].[ParentID]

