BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[q].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [q] ON [p].[ParentID] = [q].[ParentID]

