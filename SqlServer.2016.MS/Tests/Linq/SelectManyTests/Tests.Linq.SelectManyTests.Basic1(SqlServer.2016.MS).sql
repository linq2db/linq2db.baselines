BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]

