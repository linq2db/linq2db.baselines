BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] % 2,
	[x].[ChildID] DESC

