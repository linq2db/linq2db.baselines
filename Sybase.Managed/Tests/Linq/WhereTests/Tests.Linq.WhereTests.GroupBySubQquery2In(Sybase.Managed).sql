-- Sybase.Managed Sybase

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] IN (
		SELECT
			MAX([x_1].[ChildID]) as [In_1]
		FROM
			[Child] [x_1]
		GROUP BY
			[x_1].[ParentID]
	)

