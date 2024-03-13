BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] IN (
		SELECT
			[t1].[Max_1]
		FROM
			(
				SELECT
					Max([x_1].[ChildID]) as [Max_1]
				FROM
					[Child] [x_1]
				GROUP BY
					[x_1].[ParentID]
			) [t1]
	)

