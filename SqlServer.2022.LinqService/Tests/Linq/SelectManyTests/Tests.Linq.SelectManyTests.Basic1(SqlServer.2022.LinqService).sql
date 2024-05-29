BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]

