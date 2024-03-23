BeforeExecute
-- SqlServer.2005

SELECT
	[a_QueryableChildren].[ParentID],
	[a_QueryableChildren].[ChildID]
FROM
	[Parent] [_]
		INNER JOIN [Child] [a_QueryableChildren] ON [_].[ParentID] = [a_QueryableChildren].[ParentID]

