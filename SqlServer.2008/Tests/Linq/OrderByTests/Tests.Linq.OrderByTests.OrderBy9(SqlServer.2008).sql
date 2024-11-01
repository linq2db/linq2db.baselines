BeforeExecute
-- SqlServer.2008

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID] DESC,
	[x].[ChildID] % 2 DESC

