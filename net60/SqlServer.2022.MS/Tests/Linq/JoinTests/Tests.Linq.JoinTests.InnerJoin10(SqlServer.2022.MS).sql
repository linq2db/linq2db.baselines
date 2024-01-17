BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID],
	[q].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [q] ON [p].[ParentID] = [q].[ParentID]

