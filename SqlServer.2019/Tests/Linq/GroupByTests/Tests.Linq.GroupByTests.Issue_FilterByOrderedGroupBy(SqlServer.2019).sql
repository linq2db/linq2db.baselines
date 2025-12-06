-- SqlServer.2019

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WHERE
	[t].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP (2)
					[x].[ParentID]
				FROM
					[Child] [x]
				GROUP BY
					[x].[ParentID]
				ORDER BY
					MAX([x].[ChildID]) DESC
			) [t1]
	)

-- SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

