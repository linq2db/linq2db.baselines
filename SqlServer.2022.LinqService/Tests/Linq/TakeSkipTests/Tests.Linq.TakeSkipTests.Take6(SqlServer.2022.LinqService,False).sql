BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT TOP (3)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]

