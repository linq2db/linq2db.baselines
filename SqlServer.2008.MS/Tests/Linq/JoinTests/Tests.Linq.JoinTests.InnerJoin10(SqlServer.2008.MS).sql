BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[q1].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [q1] ON [p].[ParentID] = [q1].[ParentID]

