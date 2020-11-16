BeforeExecute
-- SqlServer.2019 SqlServer.2017

WITH [MY_CTE] ([ParentID], [ChildID], [GrandChildID])
AS
(
	SELECT
		[gc1].[GrandChildID],
		[gc1].[ChildID],
		[gc1].[GrandChildID]
	FROM
		[GrandChild] [gc1]
	UNION ALL
	SELECT
		[ct].[ParentID],
		[ct].[ChildID],
		[ct].[ChildID] + 1
	FROM
		[GrandChild] [gc]
			INNER JOIN [Parent] [p] ON [p].[ParentID] = [gc].[ParentID]
			INNER JOIN [MY_CTE] [ct] ON ([ct].[ChildID] = [gc].[ChildID] OR [ct].[ChildID] IS NULL AND [gc].[ChildID] IS NULL)
	WHERE
		[ct].[GrandChildID] <= 10
)
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[MY_CTE] [t1]

