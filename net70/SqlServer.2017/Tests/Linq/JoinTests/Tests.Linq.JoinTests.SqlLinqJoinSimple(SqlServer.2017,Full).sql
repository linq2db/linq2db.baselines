BeforeExecute
-- SqlServer.2017

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

