BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t4].[ParentID],
	[t4].[ChildID]
FROM
	(
		SELECT
			[t3].[ParentID],
			[t3].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t3].[ChildID]) as [RN]
		FROM
			(
				SELECT
					[t2].[ChildID],
					[t2].[ParentID]
				FROM
					(
						SELECT
							[t1].[ChildID],
							[t1].[ParentID],
							ROW_NUMBER() OVER (ORDER BY [t1].[ChildID] DESC) as [RN]
						FROM
							[Child] [t1]
					) [t2]
				WHERE
					[t2].[RN] > 1 AND [t2].[RN] <= 8
			) [t3]
	) [t4]
WHERE
	[t4].[RN] > 2
ORDER BY
	[t4].[ChildID]

