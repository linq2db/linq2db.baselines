BeforeExecute
-- SqlServer.2005

SELECT
	[t3].[ParentID],
	[t3].[ChildID]
FROM
	(
		SELECT
			[t2_1].[ParentID],
			[t2_1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t2_1].[ChildID]) as [RN]
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
			) [t2_1]
	) [t3]
WHERE
	[t3].[RN] > 2

