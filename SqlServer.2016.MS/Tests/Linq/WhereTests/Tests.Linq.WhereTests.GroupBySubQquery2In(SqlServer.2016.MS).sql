-- SqlServer.2016.MS SqlServer.2016

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

