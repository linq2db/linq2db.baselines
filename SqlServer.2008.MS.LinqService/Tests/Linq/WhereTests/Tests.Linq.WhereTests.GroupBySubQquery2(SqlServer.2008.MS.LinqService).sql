BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] IN (
		SELECT
			MAX([x_1].[ChildID])
		FROM
			[Child] [x_1]
		GROUP BY
			[x_1].[ParentID]
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] IN (
		SELECT
			MAX([x_1].[ChildID])
		FROM
			[Child] [x_1]
		GROUP BY
			[x_1].[ParentID]
	)

