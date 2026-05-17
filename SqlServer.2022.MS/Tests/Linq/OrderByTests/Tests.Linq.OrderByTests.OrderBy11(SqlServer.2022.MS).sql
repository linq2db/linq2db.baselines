-- SqlServer.2022.MS SqlServer.2022

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] % 2,
	[x].[ChildID] DESC

