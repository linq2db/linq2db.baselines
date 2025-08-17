BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[q1].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [q1] ON [p].[ParentID] = [q1].[ParentID]

