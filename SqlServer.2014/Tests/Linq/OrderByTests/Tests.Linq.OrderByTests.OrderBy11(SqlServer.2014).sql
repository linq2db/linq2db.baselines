-- SqlServer.2014

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] % 2,
	[x].[ChildID] DESC

