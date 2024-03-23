BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[a_QueryableChildren].[ParentID],
	[a_QueryableChildren].[ChildID]
FROM
	[Parent] [_]
		INNER JOIN [Child] [a_QueryableChildren] ON [_].[ParentID] = [a_QueryableChildren].[ParentID]

