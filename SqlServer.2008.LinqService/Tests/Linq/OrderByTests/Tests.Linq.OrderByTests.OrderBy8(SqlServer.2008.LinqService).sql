BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
ORDER BY
	[x].[ChildID],
	[x].[ChildID] % 2

