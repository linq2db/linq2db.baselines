BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [o].[ParentID]

