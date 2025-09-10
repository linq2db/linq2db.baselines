BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [o].[ParentID]

