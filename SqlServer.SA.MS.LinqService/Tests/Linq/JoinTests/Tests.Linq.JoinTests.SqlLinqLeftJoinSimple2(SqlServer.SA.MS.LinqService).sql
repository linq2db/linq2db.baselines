BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

