-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Parent] [x]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [x].[ParentID]

