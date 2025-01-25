BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[ParentID],
	[q1].[GrandChildID]
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [q1] ON [t1].[ParentID] = [q1].[ParentID]

