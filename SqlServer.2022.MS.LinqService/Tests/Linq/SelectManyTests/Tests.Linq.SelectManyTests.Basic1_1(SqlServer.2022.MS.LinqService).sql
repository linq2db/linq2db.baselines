BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[t2].[ParentID],
	[t2].[ChildID],
	[t2].[GrandChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]
		CROSS JOIN [GrandChild] [t2]

