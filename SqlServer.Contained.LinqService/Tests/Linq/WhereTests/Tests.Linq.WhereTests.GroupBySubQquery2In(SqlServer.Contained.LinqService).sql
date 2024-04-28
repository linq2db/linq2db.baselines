BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] IN (
		SELECT
			[t1].[MAX_1]
		FROM
			(
				SELECT
					MAX([x_1].[ChildID]) as [MAX_1]
				FROM
					[Child] [x_1]
				GROUP BY
					[x_1].[ParentID]
			) [t1]
	)

