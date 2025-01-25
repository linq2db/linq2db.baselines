BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

