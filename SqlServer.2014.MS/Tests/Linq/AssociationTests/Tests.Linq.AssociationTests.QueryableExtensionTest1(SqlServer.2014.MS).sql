BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[a_QueryableChildren].[ParentID],
	[a_QueryableChildren].[ChildID]
FROM
	[Parent] [_]
		INNER JOIN [Child] [a_QueryableChildren] ON [_].[ParentID] = [a_QueryableChildren].[ParentID]

