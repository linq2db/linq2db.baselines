BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[a_QueryableParent].[ParentID],
	[a_QueryableParent].[Value1]
FROM
	[Child] [_]
		INNER JOIN [Parent] [a_QueryableParent] ON [_].[ParentID] = [a_QueryableParent].[ParentID]

