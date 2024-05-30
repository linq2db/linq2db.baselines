BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ParentID],
	[q1].[GrandChildID]
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [q1] ON [t1].[ParentID] = [q1].[ParentID]

