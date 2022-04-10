BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

