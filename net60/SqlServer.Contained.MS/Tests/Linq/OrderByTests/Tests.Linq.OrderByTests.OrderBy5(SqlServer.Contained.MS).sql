BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] % 2,
	[t1].[ChildID]

